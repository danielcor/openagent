module OpenAgent
  module Messages

    class SIF_Error
     include ROXML
      xml_name 'SIF_Error'
      xml_accessor :sif_category, :from => 'SIF_Category'
      xml_accessor :sif_code, :from => 'SIF_Code'
      xml_accessor :sif_desc, :from => 'SIF_Desc'
      xml_accessor :sif_extendeddesc, :from => 'SIF_ExtendedDesc'

    end    

  end
end