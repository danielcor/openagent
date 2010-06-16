module OpenAgent

  module messages

    class SIF_Unregister
       include ROXML
        xml_name 'SIF_Unregister'
        xml_accessor :sif_header, :as => [SIF_Header]
    end


    class Register
       include ROXML
       xml_name 'SIF_Message'
       xml_accessor :version, :from => '@Version'
       xml_accessor :xmlns,   :from => '@xmlns'
       xml_accessor :sif_unregister, :as => SIF_Unregister
    end

    
  end
end