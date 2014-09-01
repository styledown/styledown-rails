Developer notes
===============

### Releasing new versions

    vim History.md
    bump lib/styledown/version.rb
    gem build *.gemspec
    rake && gem push *.gem && git release v1.0.0
