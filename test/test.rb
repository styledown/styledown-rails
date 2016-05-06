require File.expand_path('../test_helper', __FILE__)

describe 'Styledown.js_version' do
  it 'produces a string' do
    Styledown.js_version.must_match /^\d+\.\d+\.\d+/
  end
end

describe 'Basic parsing' do
  before do
    @data = Styledown.parse([{
      name: 'buttons.md',
      contents: '### hi'
    }])
  end

  it 'works' do
    @data['files'].must_be_kind_of Hash
    @data['files']['buttons.md'].must_be_kind_of Hash
    @data['files']['buttons.md']['sections'].must_be_kind_of Hash
  end

  describe 'with rendering' do
    before do
      @output = Styledown.render(@data, 'buttons.md')
    end

    it 'produces an HTML fragment' do
      @output.must_match /<h3[^>]+>hi<\/h3>/
    end

    it "doesn't produce an HTML document" do
      @output.wont_match /^<!doctype html>/
    end
  end

  describe 'with rendering with layouts' do
    before do
      @output = Styledown.render(@data, 'buttons.md', layout: '<!doctype html><%- body %>')
    end

    it 'produces HTML' do
      @output.must_match /<h3[^>]+>hi<\/h3>/
    end

    it "uses the layout" do
      @output.must_match /^<!doctype html>/
    end
  end
end

describe 'Working with arrays of strings' do
  before do
    @output = Styledown.parse_files([
      fixture_path('simple/sample.md'),
      fixture_path('simple/other_sample.md')
    ])
  end

  it 'parses' do
    @output['files'].must_be_kind_of Hash
    @output['files'][fixture_path('simple/sample.md')].must_be_kind_of Hash
    @output['files'][fixture_path('simple/other_sample.md')].must_be_kind_of Hash
  end
end
