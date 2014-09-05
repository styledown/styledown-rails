Styledown
=========

Ruby integration of [Styledown].


[![Status](http://img.shields.io/travis/styledown/styledown-ruby/master.svg?style=flat)](https://travis-ci.org/styledown/styledown-ruby "See test builds")

## Ruby integration

```rb
# Gemfile
gem 'styledown'
```

[![Gem](https://img.shields.io/gem/v/styledown.svg?style=flat)](http://rubygems.org/gems/styledown "View this project in Rubygems")

## Plain Ruby integration

API for `Styledown.parse` is exactly the same as the JS version ([docs]).

```rb
require 'styledown'

# Passing a Styledown sting:
Styledown.parse('### hello', bare: true)

# Parsing files from disk:
Styledown.parse([
    '/path/to/input.css',
    '/path/to/input.md',
    '...'
])

# Parsing files from elsewhere:
Styledown.parse([
  { name: "input.md",  data: "### hi from md" },
  { name: "input.css", data: "/**\n * hi from css:\n * world\n */" }
])
```

 
[docs]: https://github.com/styledown/styledown/blob/master/docs/API.md#styledownparse

## :copyright:

**styledown** © 2014+, Rico Sta. Cruz. Released under the [MIT License].<br>
Authored and maintained by Rico Sta. Cruz with help from [contributors].

> [ricostacruz.com](http://ricostacruz.com) &nbsp;&middot;&nbsp;
> GitHub [@rstacruz](https://github.com/rstacruz) &nbsp;&middot;&nbsp;
> Twitter [@rstacruz](https://twitter.com/rstacruz)

[MIT License]: http://mit-license.org/
[contributors]: http://github.com/styledown/styledown-ruby/contributors
[Styledown]: https://github.com/styledown/styledown
