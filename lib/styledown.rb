module Styledown
  extend self

  def source
    @source ||= File.read(File.expand_path('../styledown/src/styledown.js', __FILE__))
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

# puts Styledown.parse('### hi')
