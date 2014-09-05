Developer notes
===============

### Updating source

Update `vendor/dist/styledown.js`. Get it as `dist/styledown.js` from the 
[styledown/styledown] repo. This is built using the `npm run prepublish` hook.

[styledown/styledown]: https://github.com/styledown/styledown

### Releasing new versions

    vim History.md
    bump lib/styledown/version.rb
    gem build *.gemspec
    rake && gem push *.gem && git release v1.0.0
