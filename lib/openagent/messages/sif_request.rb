module OpenAgent
  module Message
    module SIF_Request

      class SIF_Condition
        include ROXML
        xml_name 'SIF_Condition'
        xml_accessor :sif_element,      :from => 'SIF_Element'
        xml_accessor :sif_operator,     :from => 'SIF_Operator'
        xml_accessor :sif_value,        :from => 'SIF_Value'
      end

      class SIF_Conditions
        include ROXML
        xml_name 'SIF_Conditions'
        xml_accessor :type,             :from => '@Type'
        xml_accessor :sif_condition,   :as => [SIF_Condition]
      end

      class SIF_ConditionGroup
        include ROXML
        xml_name 'SIF_ConditionGroup'
        xml_accessor :type,             :from => '@Type'
        xml_accessor :sif_conditions,   :as => [SIF_Conditions]
      end

      class SIF_QueryObject
        include ROXML
        xml_name 'SIF_QueryObject'
        xml_accessor :objectname, :from => '@ObjectName'
      end

      class SIF_Query
        include ROXML
        xml_name 'SIF_Query'
        xml_accessor :sif_queryobject,      :as => SIF_QueryObject
        xml_accessor :sif_conditiongroup,   :as => SIF_ConditionGroup
      end

      class SIF_Request
        include ROXML
        xml_name 'SIF_Request'
  
        xml_accessor :sif_header, :as => SIF_Header
        xml_accessor :sif_version, :from => 'SIF_Version'
        xml_accessor :sif_maxbuffersize, :from => 'SIF_MaxBufferSize'
        xml_accessor :sif_query, :as => SIF_Query
#       xml_accessor :sif_extendedquery, :from => 'SIF_ExtendedQuery'
      end

      class SIF_Message
        include ROXML
        xml_name 'SIF_Message'
        xml_accessor :version, :from => '@Version'
        xml_accessor :xmlns,   :from => '@xmlns'
        xml_accessor :sif_request, :as => SIF_Request
      end
    
    end
  end
end