module OpenAgent
  module Message
    class SIF_SecureChannel
      include ROXML
      xml_name 'SIF_SecureChannel'
      xml_accessor :sif_authenticationlevel, :from => 'SIF_AuthenticationLevel'
      xml_accessor :sif_encryptionlevel, :from => 'SIF_EncryptionLevel'
    end

    class SIF_Security
      include ROXML
      xml_name 'SIF_Security'
      xml_accessor :sif_securechannel, :as => SIF_SecureChannel
    end

    class SIF_Header
      include ROXML
      xml_name 'SIF_Header'
  
       xml_accessor :sif_msgid, :from => 'SIF_MsgId'
       xml_accessor :sif_timestamp, :from => 'SIF_Timestamp'
       xml_accessor :sif_security, :as => SIF_Security
       xml_accessor :sif_sourceid, :from => 'SIF_SourceId'
       xml_accessor :sif_destinationId, :from => 'SIF_DestinationId'
       xml_accessor :sif_contexts, :from => 'SIF_Contexts'
    end
  end
end
