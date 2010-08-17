module OpenAgent
  module Message
    module SIF_Event
    
      ADD    = 'Add'
      UPDATE = 'Update'
      DELETE = 'Delete'
    
      class SIF_EventObject
        include ROXML
        xml_name 'SIF_EventObject'
      
        xml_accessor :objectname, :from => '@ObjectName'
        xml_accessor :action,     :from => '@Action'
        xml_accessor :text,       :from => :content
      end
    
      class SIF_ObjectData
        include ROXML
        xml_name 'SIF_ObjectData'
      
        xml_accessor :sif_eventobject, :as => SIF_EventObject
      end
    
      class SIF_Event
        include ROXML
        xml_name 'SIF_Event'

        xml_accessor :sif_header, :as => SIF_Header
        xml_accessor :sif_objectdata, :as => SIF_ObjectData
      end
    
      class SIF_Message
        include ROXML
        xml_name 'SIF_Message'
        xml_accessor :version, :from => '@Version'
        xml_accessor :xmlns,   :from => '@xmlns'
        xml_accessor :sif_event, :as => SIF_Event
      end
    
    end
  end
end