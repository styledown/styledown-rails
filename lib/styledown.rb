module Styledown
  extend self

  def source
    @source ||= File.read(File.expand_path('../../vendor/dist/styledown.js', __FILE__))
  end

  def context
    @context ||= begin
      require 'execjs'
      ExecJS.compile(source)
    end
  end

  def parse(source, options={})
    context.call('Styledown.parse', source, options)
  end

  def js_version
    context.eval('Styledown.version')
  end
end

require File.expand_path('../styledown/railtie', __FILE__) if defined?(Rails)
