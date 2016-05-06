Styledown
=========

Ruby integration of [Styledown].


[![Status](http://img.shields.io/travis/styledown/styledown-rails/master.svg?style=flat)](https://travis-ci.org/styledown/styledown-rails "See test builds")

## Ruby integration

```rb
# Gemfile
gem 'styledown'
```

[![Gem](https://img.shields.io/gem/v/styledown.svg?style=flat)](http://rubygems.org/gems/styledown "View this project in Rubygems")

## Plain Ruby integration

These are provided:

* `Styledown.parse`
* `Styledown.parse_files`
* `Styledown.render`

API them is exactly the same as the JS version ([docs]).

```rb
require 'styledown'

# Parsing files from disk:
data = Styledown.parse_files([
  '/path/to/buttons.md',
  '/path/to/forms.md',
  '...'
])

# Parsing files from elsewhere:
data = Styledown.parse([
  { name: 'buttons.md', contents: '### hi from buttons' },
  { name: 'forms.md',   contents: '### hi from forms' },
])

# Rendering a page:
html = Styledown.render(data, 'buttons.md')
html = Styledown.render(data, 'forms.md')
```

[docs]: https://github.com/styledown/styledown/blob/v2/docs/api.md#styledownparse

## :copyright:

**styledown** © 2014-2016, Rico Sta. Cruz. Released under the [MIT License].<br>
Authored and maintained by Rico Sta. Cruz with help from [contributors].

> [ricostacruz.com](http://ricostacruz.com) &nbsp;&middot;&nbsp;
> GitHub [@rstacruz](https://github.com/rstacruz) &nbsp;&middot;&nbsp;
> Twitter [@rstacruz](https://twitter.com/rstacruz)

[MIT License]: http://mit-license.org/
[contributors]: http://github.com/styledown/styledown-rails/contributors
[Styledown]: https://github.com/styledown/styledown
