require 'awesome_print'

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each {|file| require file }

token = Token.new(type: 'word', value: 'anything')
ap token