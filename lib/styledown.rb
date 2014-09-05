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
    if array_of_filenames?(source)
      source = unpack_files(source)
    end

    context.call('Styledown.parse', source, options)
  end

  def js_version
    context.eval('Styledown.version')
  end

private

  def unpack_files(source)
    source.map { |file| { name: file, data: File.read(file) } }
  end

  def array_of_filenames?(source)
    source.is_a?(Array) && source[0].is_a?(String)
  end
end

require File.expand_path('../styledown/railtie', __FILE__) if defined?(Rails)
