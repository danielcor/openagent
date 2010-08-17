module OpenAgent

  module Messages

    class SIF_Ack
      include ROXML
      xml_name 'SIF_Ack '
      xml_accessor :sif_header, :as => SIF_Header
      xml_accessor :sif_originalsourceid, :from => 'SIF_OriginalSourceId'
      xml_accessor :sif_originalmsgid, :from => 'SIF_OriginalMsgId'
      xml_accessor :sif_status, :as => SIF_Status, :from => 'SIF_Status'
      xml_accessor :sif_error, :as => SIF_Error, :from => 'SIF_Error'
    end
  end
end