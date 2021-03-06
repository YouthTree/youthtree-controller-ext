# YouthTree Controller Ext #

## Installation ##

1. Add "gem 'youthtree-controller-ext' to your Gemfile"
2. Run bundle install

## Usage ##

Use `use_controller_ext` / `use_controller_exts` on a class with one of the named controller extensions.
By default, it provides:

* `:almost_happy` - InheritedResources collection tweak
* `:authlogic_helpers` - Base authlogic helpers
* `:pseudocephalopod_resource` - use slugged find in InheritedResource
* `:ssl_requirement` - Tie in with `youthtree-settings` to make it easier to do ssl in certain environments.
* `:title_estuary` - adds controller methods for `title_estuary`.
* `:translation` - adds support for `tu` and `tf` for flash and ui methods.

## Note on Patches/Pull Requests ##
 
1. Fork the project.
2. Make your feature addition or bug fix.
3. Add tests for it. This is important so I don't break it in a future version unintentionally.
4. Commit, do not mess with rakefile, version, or history. (if you want to have your own version, that is fine but bump version in a commit by itself I can ignore when I pull)
5. Send me a pull request. Bonus points for topic branches.

## Copyright ##

Copyright (c) 2010 Youth Tree. See LICENSE for details.
