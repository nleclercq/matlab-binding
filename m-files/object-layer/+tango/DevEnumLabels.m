classdef DevEnumLabels
  
    % Device Interface to Tango devices
    %
    % Constructor:
    %   >> de = tango.DevEnumLabels(enum_labels);

  
    % The internal data implementation is not publicly exposed
    properties (Access = 'private')
        props;
    end
    
    methods (Access = 'public', Hidden=true)
        % Overload property assignment
        function obj = subsasgn(obj, subStruct, value)
            if strcmp(subStruct.type,'.')
                try
                    obj.props(subStruct.subs) = value;
                catch
                    error('Could not assign "%s" property value', subStruct.subs);
                end
            else  % '()' or '{}'
                error('not supported');
            end
        end
        % Overload property retrieval (referencing)
        function value = subsref(obj, subStruct)
            if strcmp(subStruct.type,'.')
                try
                    value = obj.props(subStruct.subs);
                catch
                    error('"%s" is not defined as a property', subStruct.subs);
                end
            else  % '()' or '{}'
                error('not supported');
            end
        end
        % Overload fieldnames retrieval
        function names = properties(obj)
            names = obj.props.keys;
        end
        % Overload disp (i.e. display) function
        function disp(obj)
            display(obj.props.keys);
        end 
    end
    
    methods (Access = 'public', Hidden=false)
        % DevEnum constructor
        % ------------------------------------------------
        function obj = DevEnumLabels(enum_labels)
            num_labels = size(enum_labels.labels, 2);
            obj.props = containers.Map;
            for l = 1:num_labels
                obj.props(enum_labels.labels{l}) = int16(enum_labels.ids(l));
            end
        end
    end % methods

end % classdef