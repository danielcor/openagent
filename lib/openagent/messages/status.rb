module OpenAgent
    module Messages

      class SIF_Object
       include ROXML
        xml_name 'SIF_Object'
        xml_accessor :objectname, :from => '@ObjectName'
        xml_accessor :sif_extendedquerysupport, :from => 'SIF_ExtendedQuerySupport'
        xml_accessor :sif_contexts, :as => [SIF_Contexts], :from => 'SIF_Contexts '
      end

      class SIF_ProvideAccess
        include ROXML
        xml_name 'SIF_ProvideAccess '
        xml_accessor :sif_object, :as => [SIF_Object]
      end
      class SIF_SubscribeAccess
        include ROXML
        xml_name 'SIF_SubscribeAccess '
        xml_accessor :sif_object, :as => [SIF_Object]
      end
      class SIF_PublishAddAccess
        include ROXML
        xml_name 'SIF_PublishAddAccess '
        xml_accessor :sif_object, :as => [SIF_Object]
      end
      class SIF_PublishChangeAccess
        include ROXML
        xml_name 'SIF_PublishChangeAccess '
        xml_accessor :sif_object, :as => [SIF_Object]
      end
      class SIF_PublishDeleteAccess
        include ROXML
        xml_name 'SIF_PublishDeleteAccess '
        xml_accessor :sif_object, :as => [SIF_Object]
      end
      class SIF_RequestAccess
        include ROXML
        xml_name 'SIF_RequestAccess '
        xml_accessor :sif_object, :as => [SIF_Object]
      end
      class SIF_RespondAccess
        include ROXML
        xml_name 'SIF_RespondAccess '
        xml_accessor :sif_object, :as => [SIF_Object]
      end

      class SIF_AgentACL
        include ROXML
        xml_name 'SIF_AgentACL'
        xml_accessor :sif_provideaccess, :as => [SIF_ProvideAccess]
        xml_accessor :sif_subscribeaccess, :as => [SIF_SubscribeAccess]
        xml_accessor :sif_publishaddaccess, :as => [SIF_PublishAddAccess]
        xml_accessor :sif_publishchangeaccess, :as => [SIF_PublishChangeAccess]
        xml_accessor :sif_publishdeleteaccess, :as => [SIF_PublishDeleteAccess]
        xml_accessor :sif_requestaccess, :as => [SIF_RequestAccess]
        xml_accessor :sif_respondaccess, :as => [SIF_RespondAccess]
        xml_accessor :sif_metadata, :from => 'SIF_Metadata'
        xml_accessor :sif_extendedelements, :from => 'SIF_ExtendedElements'

        def sif_provideraccess
          sif_provideraccess[0]
        end
      end
      class SIF_Data
       include ROXML
       xml_name 'SIF_Data '
       xml_accessor :sif_message, :from => 'SIF_Message'
       xml_accessor :sif_agentacl, :as => SIF_AgentACL
       xml_accessor :sif_zonestatus, :from => 'SIF_ZoneStatus'
       def agentacl
         sif_agentacl.first
       end
      end

    class SIF_Status
     include ROXML
      xml_name 'SIF_Status '
      xml_accessor :sif_code, :from => 'SIF_Code'
      xml_accessor :sif_desc, :from => 'SIF_Desc'
      xml_accessor :sif_data, :as => SIF_Data

      def data
        sif_data.first
      end
    end

  end
end