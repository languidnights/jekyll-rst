require "jekyll"

root = File.expand_path('rst_ng', File.dirname(__FILE__))
require "#{root}/filters"
require "#{root}/version"

require File.expand_path('rst_ng', File.dirname(__FILE__))

module Jekyll
  module RstNg
    module Jekyll::RestConverter
  end
  end
end
