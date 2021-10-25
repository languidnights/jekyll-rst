require "jekyll_rst_ng/version"
require "rbst"
require "jekyll"

module Jekyll
  class Error < StandardError; end

  class RestConverter < Converter
    safe true

    priority :low

    def matches(ext)
      ext =~ /rst/i
    end

    def output_ext(ext)
      ".html"
    end

    def convert(content)
      RbST.new(content).to_html(:initial_header_level => 2, :stylesheet => "")
    end
  end

  module Filters
    def restify(input)
      site = @context.registers[:site]
      converter = site.getConverterImpl(Jekyll::RestConverter)
      converter.convert(input)
    end
  end
end
