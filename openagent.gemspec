require 'rubygems'

spec = Gem::Specification.new do |gem|
  gem.authors = 'Christopher Whiteley'
  gem.email = 'hello@openzis.org'
  gem.homepage = %q{http://www.openzis.org/}
  gem.name = 'OpenAgent'
  gem.version = '0.5.0'
  gem.date = %q{2010-08-16}
  gem.summary = 'OpenAgent is a SIF Agent Development Kit'
  gem.description = %q{OpenAgent - SIF ADK.(SIF Agent Development Kit)}
  gem.required_ruby_version = '>= 1.8.6'
  gem.files = %w[
    README
    openagent.gemspec
    lib
    lib/openagent.rb
    lib/openagent/messages
    lib/openagent/messages.rb
    lib/openagent/sif.rb
    lib/openagent/messages/sif_controlmessage.rb
    lib/openagent/messages/sif_header.rb
    lib/openagent/messages/sif_register.rb
    lib/openagent/messages/sif_unregister.rb
    lib/openagent/messages/sif_event.rb
    lib/openagent/messages/sif_provision.rb
    lib/openagent/messages/sif_request.rb
    ]
  
end
