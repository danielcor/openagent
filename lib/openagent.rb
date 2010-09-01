require "net/http"
require "net/https"
require "uri"

begin 
  require 'uuid'
rescue LoadError
  begin 
    require 'rubygems'
    require 'uuid'
  rescue LoadError
    abort <<-ERROR
The 'uuid' library could not be loaded. If you have RubyGems installed
you can install uuid by doing "gem install uuid".
ERROR
  end
end
  
begin
  require 'roxml'
rescue LoadError
  begin 
    require 'rubygems'
    require 'roxml'
  rescue LoadError
    abort <<-ERROR
The 'roxml' library could not be loaded. If you have RubyGems installed
you can install ROXML by doing "gem install roxml".
ERROR
  end
end


require 'openagent/messages'
require 'openagent/zone'
require 'openagent/agent'
require 'openagent/activity'



module OpenAgent


end