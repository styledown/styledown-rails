require File.expand_path('../test_helper', __FILE__)

describe 'Styledown.js_version' do
  it 'produces a string' do
    Styledown.js_version.must_match /^\d+\.\d+\.\d+/
  end
end

describe 'Basic parsing' do
  before do
    @output = Styledown.parse('### hi')
  end

  it 'produces an HTML fragment' do
    @output.must_match /<h3[^>]+>hi<\/h3>/
  end

  it "doesn't produce an HTML document" do
    @output.wont_match /^<!doctype html>/
  end
end

describe 'Working with many files' do
  before do
    @output = Styledown.parse([
      { name: 'input.md',  data: '### hi from md' },
      { name: 'input.css', data: "/**\n * hi from css:\n * world\n */" }
    ])
  end

  it 'parses the Markdown file' do
    @output.must_match /<h3[^>]+>hi from md<\/h3>/
  end

  it 'parses the CSS file' do
    @output.must_match /<h3[^>]+>hi from css<\/h3>/
  end
end

describe 'head options' do
  before do
    @output = Styledown.parse('### hi', head: '<meta>')
  end

  it 'includes the head text' do
    @output.must_match /<meta>/
  end

  it 'produces an HTML document' do
    @output.must_match /^<!doctype html>/
  end
end

describe 'Working with arrays of strings' do
  before do
    @output = Styledown.parse([
      fixture_path('simple/sample.css'),
      fixture_path('simple/sample.md')
    ])
  end

  it 'renders from .md' do
    @output.must_match /Sample md block<\/h3>/
  end

  it 'renders from .css' do
    @output.must_match /Sample CSS block<\/h3>/
  end
end
