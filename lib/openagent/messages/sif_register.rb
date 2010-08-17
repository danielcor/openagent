module OpenAgent
  module Message
    module SIF_Register

      class SIF_Application
        include ROXML
        xml_name 'SIF_Application'
        xml_accessor :sif_vendor, :from => 'SIF_Vendor'
        xml_accessor :sif_product, :from => 'SIF_Product'
        xml_accessor :sif_version, :from => 'SIF_Version'
      end

      class SIF_Register
        include ROXML
        xml_name 'SIF_Register'
  
        xml_accessor :sif_header, :as => SIF_Header
        xml_accessor :sif_name, :from => 'SIF_Name'
        xml_accessor :sif_version, :from => 'SIF_Version'
        xml_accessor :sif_maxbuffersize, :from => 'SIF_MaxBufferSize'
        xml_accessor :sif_mode, :from => 'SIF_Mode'
        xml_accessor :sif_protocol, :from => 'SIF_Protocol'
        xml_accessor :sif_nodevendor, :from => 'SIF_Vendor'
        xml_accessor :sif_nodeversion, :from => 'SIF_NodeVersion'
        xml_accessor :sif_icon, :from => 'SIF_Icon'
      end

      class SIF_Message
        include ROXML
        xml_name 'SIF_Message'
        xml_accessor :version, :from => '@Version'
        xml_accessor :xmlns,   :from => '@xmlns'
        xml_accessor :sif_register, :as => SIF_Register
      end
      
    end
  end
end