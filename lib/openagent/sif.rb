
module OpenAgent
    class SIF
  
      def timestamps()
        @timenow   = Time.now
        return @timenow.strftime("%Y-%m-%d") + "T" + @timenow.strftime("%H:%M:%S")
      end
  
      def guuid ()
        return UUID.generate(:compact).upcase
      end
  
      def sif_register (agent_obj = nil, zone_obj = nil)
    
        msg = OpenAgent::Message::SIF_Register::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_register = OpenAgent::Message::SIF_Register::SIF_Register.new
        msg.sif_register.sif_name = agent_obj.sif_name
        msg.sif_register.sif_version = agent_obj.sif_version 
        msg.sif_register.sif_maxbuffersize = agent_obj.sif_maxbuffersize
        msg.sif_register.sif_mode = agent_obj.sif_mode
        msg.sif_register.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_register.sif_header.sif_msgid = guuid()
        msg.sif_register.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_register.sif_header.sif_timestamp = timestamps()
    
        return msg, msg.sif_register.sif_header.sif_msgid
      end
  
      def sif_unregister (agent_obj = nil, zone_obj = nil)
    
        msg = OpenAgent::Message::SIF_Unregister::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_unregister = OpenAgent::Message::SIF_Unregister::SIF_Unregister.new
        msg.sif_unregister.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_unregister.sif_header.sif_msgid = guuid()
        msg.sif_unregister.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_unregister.sif_header.sif_timestamp = timestamps()
    
        return msg, msg.sif_unregister.sif_header.sif_msgid
      end
  
      def sif_request (agent_obj, zone_obj, objectname, conditiongroup)
    
        msg = OpenAgent::Message::SIF_Request::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_request = OpenAgent::Message::SIF_Request::SIF_Request.new
        msg.sif_request.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_request.sif_header.sif_msgid = guuid()
        msg.sif_request.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_request.sif_header.sif_timestamp = timestamps()
        msg.sif_request.sif_version = agent_obj.sif_version
        msg.sif_request.sif_maxbuffersize = agent_obj.sif_maxbuffersize
        msg.sif_request.sif_query = OpenAgent::Message::SIF_Request::SIF_Query.new
        msg.sif_request.sif_query.sif_queryobject = OpenAgent::Message::SIF_Request::SIF_QueryObject.new
        msg.sif_request.sif_query.sif_queryobject.objectname = objectname
    
        msg.sif_request.sif_query.sif_conditiongroup = conditiongroup
     
        return msg, msg.sif_request.sif_header.sif_msgid
      end
  
      def sif_ping (agent_obj = nil, zone_obj = nil)

        msg = OpenAgent::Message::SIF_SystemControl::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_systemcontrol = OpenAgent::Message::SIF_SystemControl::SIF_SystemControl.new
        msg.sif_systemcontrol.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_systemcontrol.sif_systemcontroldata = OpenAgent::Message::SIF_SystemControl::SIF_SystemControlData.new
        msg.sif_systemcontrol.sif_systemcontroldata.sif_ping = OpenAgent::Message::SIF_SystemControl::SIF_Ping.new
        msg.sif_systemcontrol.sif_header.sif_msgid = guuid()
        msg.sif_systemcontrol.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_systemcontrol.sif_header.sif_timestamp = timestamps()
        
        return msg, msg.sif_systemcontrol.sif_header.sif_msgid
      end
  
      def sif_sleep (agent_obj = nil, zone_obj = nil)
        msg = OpenAgent::Message::SIF_SystemControl::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_systemcontrol = OpenAgent::Message::SIF_SystemControl::SIF_SystemControl.new
        msg.sif_systemcontrol.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_systemcontrol.sif_systemcontroldata = OpenAgent::Message::SIF_SystemControl::SIF_SystemControlData.new
        msg.sif_systemcontrol.sif_systemcontroldata.sif_sleep = OpenAgent::Message::SIF_SystemControl::SIF_Sleep.new
        msg.sif_systemcontrol.sif_header.sif_msgid = guuid()
        msg.sif_systemcontrol.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_systemcontrol.sif_header.sif_timestamp = timestamps()
        
        return msg, msg.sif_systemcontrol.sif_header.sif_msgid
      end
  
      def sif_wakeup (agent_obj = nil, zone_obj = nil)
        msg = OpenAgent::Message::SIF_SystemControl::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_systemcontrol = OpenAgent::Message::SIF_SystemControl::SIF_SystemControl.new
        msg.sif_systemcontrol.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_systemcontrol.sif_systemcontroldata = OpenAgent::Message::SIF_SystemControl::SIF_SystemControlData.new
        msg.sif_systemcontrol.sif_systemcontroldata.sif_wakeup = OpenAgent::Message::SIF_SystemControl::SIF_Wakeup.new
        msg.sif_systemcontrol.sif_header.sif_msgid = guuid()
        msg.sif_systemcontrol.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_systemcontrol.sif_header.sif_timestamp = timestamps()
        
        return msg, msg.sif_systemcontrol.sif_header.sif_msgid
      end
  
      def sif_getmessage (agent_obj = nil, zone_obj = nil)
        msg = OpenAgent::Message::SIF_SystemControl::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_systemcontrol = OpenAgent::Message::SIF_SystemControl::SIF_SystemControl.new
        msg.sif_systemcontrol.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_systemcontrol.sif_systemcontroldata = OpenAgent::Message::SIF_SystemControl::SIF_SystemControlData.new
        msg.sif_systemcontrol.sif_systemcontroldata.sif_getmessage = OpenAgent::Message::SIF_SystemControl::SIF_GetMessage.new
        msg.sif_systemcontrol.sif_header.sif_msgid = guuid()
        msg.sif_systemcontrol.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_systemcontrol.sif_header.sif_timestamp = timestamps()
        
        return msg, msg.sif_systemcontrol.sif_header.sif_msgid
      end
  
      def sif_getzonestatus (agent_obj = nil, zone_obj = nil)
        msg = OpenAgent::Message::SIF_SystemControl::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_systemcontrol = OpenAgent::Message::SIF_SystemControl::SIF_SystemControl.new
        msg.sif_systemcontrol.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_systemcontrol.sif_systemcontroldata = OpenAgent::Message::SIF_SystemControl::SIF_SystemControlData.new
        msg.sif_systemcontrol.sif_systemcontroldata.sif_getzonestatus = OpenAgent::Message::SIF_SystemControl::SIF_GetZoneStatus.new
        msg.sif_systemcontrol.sif_header.sif_msgid = guuid()
        msg.sif_systemcontrol.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_systemcontrol.sif_header.sif_timestamp = timestamps()
        
        return msg, msg.sif_systemcontrol.sif_header.sif_msgid
      end
  
      def sif_getagentacl (agent_obj = nil, zone_obj = nil)
        msg = OpenAgent::Message::SIF_SystemControl::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_systemcontrol = OpenAgent::Message::SIF_SystemControl::SIF_SystemControl.new
        msg.sif_systemcontrol.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_systemcontrol.sif_systemcontroldata = OpenAgent::Message::SIF_SystemControl::SIF_SystemControlData.new
        msg.sif_systemcontrol.sif_systemcontroldata.sif_getagentacl = OpenAgent::Message::SIF_SystemControl::SIF_GetAgentACL.new
        msg.sif_systemcontrol.sif_header.sif_msgid = guuid()
        msg.sif_systemcontrol.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_systemcontrol.sif_header.sif_timestamp = timestamps()
        
        return msg, msg.sif_systemcontrol.sif_header.sif_msgid
      end
  
      def sif_cancelrequest (agent_obj = nil, zone_obj = nil, notification_type = 'None', requestmsgids = [])
        msg = OpenAgent::Message::SIF_SystemControl::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_systemcontrol = OpenAgent::Message::SIF_SystemControl::SIF_SystemControl.new
        msg.sif_systemcontrol.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_systemcontrol.sif_header.sif_msgid = guuid()
        msg.sif_systemcontrol.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_systemcontrol.sif_header.sif_timestamp = timestamps()
        msg.sif_systemcontrol.sif_systemcontroldata = OpenAgent::Message::SIF_SystemControl::SIF_SystemControlData.new
        msg.sif_systemcontrol.sif_systemcontroldata.sif_cancelrequest = OpenAgent::Message::SIF_SystemControl::SIF_CancelRequest.new
        msg.sif_systemcontrol.sif_systemcontroldata.sif_cancelrequest.sif_notificationtype = sif_notificationtype
    
        msg.sif_systemcontrol.sif_systemcontroldata.sif_cancelrequest.sif_requestmsgids = []
        if !requestmsgids.nil? then
        SIF_RequestMsgIds.each { |e| 
          rmi = OpenAgent::Message::SIF_SystemControl::SIF_RequestMsgId.new
          rmi.sif_requestmsgid = e 
          msg.sif_systemcontrol.sif_systemcontroldata.sif_cancelrequest.sif_requestmsgids << rmi
          }
        end
        
        return msg, msg.sif_systemcontrol.sif_header.sif_msgid
      end
  
      def sif_object (objname)
        @o = OpenAgent::Message::SIF_Provision::SIF_Object.new
        @o.objectname = objname
        return @o
      end
  
      def sif_provision (agent_obj = nil, zone_obj = nil)
  
        so  = OpenAgent::Message::SIF_Provision::SIF_SubscribeObjects.new
        if !agent_obj.sif_subscribeobjects.nil? then
        so.sif_objects = []
        agent_obj.sif_subscribeobjects.each { |e| so.sif_objects << sif_object(e) }
        end
    
        ros = OpenAgent::Message::SIF_Provision::SIF_RequestObjects.new
        if !agent_obj.sif_requestobjects.nil? then
          ros.sif_objects = []
          agent_obj.sif_requestobjects.each { |e| ros.sif_objects << sif_object(e)}
        end
    
        po  = OpenAgent::Message::SIF_Provision::SIF_ProvideObjects.new
        if !agent_obj.sif_provideobjects.nil? then
          po.sif_objects = []
          agent_obj.sif_provideobjects.each { |e| po.sif_objects << sif_object(e)}
        end
    
        pao = OpenAgent::Message::SIF_Provision::SIF_PublishAddObjects.new
        if !agent_obj.sif_publishaddobjects.nil? then
          pao.sif_objects = []
          agent_obj.sif_publishaddobjects.each { |e| pao.sif_objects << sif_object(e)}
        end
    
        pco = OpenAgent::Message::SIF_Provision::SIF_PublishChangeObjects.new
        if !agent_obj.sif_publishchangeobjects.nil? then
        pco.sif_objects = []
        agent_obj.sif_publishchangeobjects.each { |e| pco.sif_objects << sif_object(e)}
        end
    
        pdo = OpenAgent::Message::SIF_Provision::SIF_PublishDeleteObjects.new
        if !agent_obj.sif_publishdeleteobjects.nil? then
          pdo.sif_objects = []
          agent_obj.sif_publishdeleteobjects.each { |e| pdo.sif_objects << sif_object(e)}
        end
    
        ro  = OpenAgent::Message::SIF_Provision::SIF_RespondObjects.new
        if !agent_obj.sif_respondobjects.nil? then
          ro.sif_objects = []
          agent_obj.sif_respondobjects.each { |e| ro.sif_objects << sif_object(e)}
        end
    
        msg = OpenAgent::Message::SIF_Provision::SIF_Message.new
        msg.version = agent_obj.msg_version
        msg.xmlns = agent_obj.msg_xmlns
        msg.sif_provision = OpenAgent::Message::SIF_Provision::SIF_Provision.new
        msg.sif_provision.sif_header = OpenAgent::Message::SIF_Header.new
        msg.sif_provision.sif_header.sif_msgid = guuid
        msg.sif_provision.sif_header.sif_sourceid = agent_obj.sourceid
        msg.sif_provision.sif_header.sif_timestamp = timestamps()
        msg.sif_provision.sif_provideobjects = po
        msg.sif_provision.sif_subscribeobjects = so
        msg.sif_provision.sif_publishaddobjects = pao
        msg.sif_provision.sif_publishchangeobjects = pco
        msg.sif_provision.sif_publishdeleteobjects = pdo
        msg.sif_provision.sif_requestobjects = ros
        msg.sif_provision.sif_respondobjects = ro
  
        return msg, msg.sif_provision.sif_header.sif_msgid
    
     end
 
     def sif_event (agent_obj, zone_obj, objectname=nil, action='Update', xml='HOLDER')
   
       msg = OpenAgent::Message::SIF_Event::SIF_Message.new
       msg.version = agent_obj.msg_version
       msg.xmlns = agent_obj.msg_xmlns
       msg.sif_event = OpenAgent::Message::SIF_Event::SIF_Event.new
       msg.sif_event.sif_header = OpenAgent::Message::SIF_Header.new
       msg.sif_event.sif_header.sif_msgid = guuid
       msg.sif_event.sif_header.sif_sourceid = agent_obj.sourceid
       msg.sif_event.sif_header.sif_timestamp = timestamps()
       msg.sif_event.sif_objectdata = OpenAgent::Message::SIF_Event::SIF_ObjectData.new
       msg.sif_event.sif_objectdata.sif_eventobject = OpenAgent::Message::SIF_Event::SIF_EventObject.new
       msg.sif_event.sif_objectdata.sif_eventobject.objectname = objectname
       msg.sif_event.sif_objectdata.sif_eventobject.action = action
       msg.sif_event.sif_objectdata.sif_eventobject.text = 'HOLDER'
   
       doc = msg.to_xml.to_s
       doc = doc.gsub(/HOLDER/, xml)
      
       return doc, msg.sif_event.sif_header.sif_msgid
     end
     
     def sif_ack (agent_obj, zone_obj, originalsourceid=nil, originalmsgid=nil, code=nil)
   
       msg = OpenAgent::Message::SIF_Ack::SIF_Message.new
       msg.version = agent_obj.msg_version
       msg.xmlns = agent_obj.msg_xmlns
       msg.sif_ack = OpenAgent::Message::SIF_Ack::SIF_Ack.new
       msg.sif_ack.sif_header = OpenAgent::Message::SIF_Header.new
       msg.sif_ack.sif_header.sif_msgid = guuid()
       msg.sif_ack.sif_header.sif_sourceid = agent_obj.sourceid
       msg.sif_ack.sif_header.sif_timestamp = timestamps()
       msg.sif_ack.sif_originalsourceid = originalsourceid
       msg.sif_ack.sif_originalmsgid = originalmsgid
       msg.sif_ack.sif_status = OpenAgent::Message::SIF_Ack::SIF_Status.new
       msg.sif_ack.sif_status.sif_code = code
    
       return msg, msg.sif_ack.sif_header.sif_msgid
     end
    end
end