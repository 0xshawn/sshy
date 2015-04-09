# require all files
$:.unshift File.dirname(__FILE__)
%w(version).each do |file|
  require "sshy/#{file}"
end

module Sshy
  require 'sshy/data'
  autoload :VERSION, 'sshy/version'
  #autoload :Data, 'sshy/data'
end
