Styledown-rails
===============

Ruby integration of [Styledown].

*NB: This is a work in progress. Check back in a few days.*

## Rails integration

```rb
# Gemfile
gem 'styledown-rails'
```

Controller:

```rb
module StyleguideController
  def index
    files = Dir['./app/assets/stylesheets/*.scss']
    render_styleguide files: files, layout: 'application'
  end
end
```

## Plain Ruby integration

Contrary to the gem's name, styledown-rails does *not* require Rails.

```rb
require 'styledown'

Styledown.parse('### hello', bare: true)

Styledown.parse([
  { name: "input.md",  data: "### hi from md" },
  { name: "input.css", data: "/**\n * hi from css:\n * world\n */" }
])
```

API for `Styledown.parse` is exactly the same as the JS version ([docs]).
 
[docs]: https://github.com/styledown/styledown/blob/master/docs/API.md#styledownparse

## :copyright:

**styledown-rails** © 2014+, Rico Sta. Cruz. Released under the [MIT License].<br>
Authored and maintained by Rico Sta. Cruz with help from [contributors].

> [ricostacruz.com](http://ricostacruz.com) &nbsp;&middot;&nbsp;
> GitHub [@rstacruz](https://github.com/rstacruz) &nbsp;&middot;&nbsp;
> Twitter [@rstacruz](https://twitter.com/rstacruz)

[MIT License]: http://mit-license.org/
[contributors]: http://github.com/styledown/styledown-ruby/contributors
[Styledown]: https://github.com/styledown/styledown
