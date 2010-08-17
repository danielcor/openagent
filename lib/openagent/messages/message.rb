module OpenAgent

  module Messages

    class SIF_Message
      include ROXML
      xml_name 'SIF_Message'
      xml_accessor :version, :from => '@Version'
      xml_accessor :xmlns, :from => '@xmlns'
          xml_accessor :sif_ack, :as => SIF_Ack, :from => 'SIF_Ack'
#          xml_accessor :sif_event, :as => [SIF_Event]
#          xml_accessor :sif_provide, :as => [SIF_Provide]
#          xml_accessor :sif_provision, :as => [SIF_Provision]
      xml_accessor :sif_register, :as => SIF_Register
#          xml_accessor :sif_request, :as => [SIF_Request]
#          xml_accessor :sif_response, :as => [SIF_Response]
#          xml_accessor :sif_subscribe, :as => [SIF_Subscribe]
#          xml_accessor :sif_systemcontrol, :as => [SIF_SystemControl]
#          xml_accessor :sif_unprovide, :as => [SIF_Unprovide]
      xml_accessor :sif_unregister, :as => SIF_Unregister
#          xml_accessor :sif_unsubscribe, :as => [SIF_Unsubscribe]
      end

  end
end