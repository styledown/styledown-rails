require File.expand_path('../test_helper', __FILE__)

describe "Styledown.js_version" do
  it "produces a string" do
    Styledown.js_version.must_match /^\d+\.\d+\.\d+/
  end
end

describe "Basic parsing" do
  before do
    @output = Styledown.parse('### hi')
  end

  it "produces an HTML fragment" do
    @output.must_match /<h3[^>]+>hi<\/h3>/
  end

  it "doesn't produce an HTML document" do
    @output.wont_match /^<!doctype html>/
  end
end

describe 'head options' do
  before do
    @output = Styledown.parse('### hi', head: '<meta>')
  end

  it "includes the head text" do
    @output.must_match /<meta>/
  end

  it "produces an HTML document" do
    @output.must_match /^<!doctype html>/
  end
end
