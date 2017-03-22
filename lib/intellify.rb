require 'test-factory'

$: << File.dirname(__FILE__)+'/intellify'
require 'intellify/intellify_base_page'
Dir["#{File.dirname(__FILE__)}/intellify/*.rb"].each {|f| require f }
#Dir["#{File.dirname(__FILE__)}/intellify/pages/*.rb"].each {|f| require f }
Dir["#{File.dirname(__FILE__)}/intellify/pages/**/*.rb"].each {|f| require f }
Dir["#{File.dirname(__FILE__)}/intellify/data_objects/**/*.rb"].each {|f| require f }
Dir["#{File.dirname(__FILE__)}/test_factory_ext/**/*.rb"].each {|f| require f }



