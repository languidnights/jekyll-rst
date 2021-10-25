require "jekyll"

root = File.expand_path('jekyll_rst_ng', File.dirname(__FILE__))
require "#{root}/filters"
require "#{root}/version"

require File.expand_path('jekyll_rst_ng', File.dirname(__FILE__))

module Jekyll
  module JekyllRstConverter
  end
end
