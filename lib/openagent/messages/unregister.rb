module OpenAgent

  module Messages

    class SIF_Unregister
       include ROXML
        xml_name 'SIF_Unregister'
        xml_accessor :sif_header, :as => SIF_Header
    end

    
  end
end