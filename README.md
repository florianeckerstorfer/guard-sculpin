Guard::Sculpin
==============

Guard::Sculpin automatically generates a Sculpin site when a source file changes.


Installation
------------

Add Guard::Sculpin to your Gemfile

```ruby
gem 'guard-sculpin', :require => false
```

Install by running Bundler

```bash
$ bundle
```

Add a sample guard definition to your `Guardfile`:

```bash
$ bundle exec guard init sculpin
```


Usage
-----

Guard::Sculpin has some options you can set.

- `:binary => 'vendor/bin/sculpin'`
- `:env => 'dev'`
- `:project_dir => '.'`

The default configuration assumes you used Composer to install Sculpin. If you have Sculpin installed globally you should change `:binary` to `sculpin`.

### Example Guard definition

```ruby
guard 'sculpin' do
    watch(%r{^source/*})
end
```

*(This definition is installed when you run `bundle exec guard init sculpin`)*


Author
------

- [Florian Eckerstorfer](http://florian.ec) ([Twitter](http://twitter.com/Florian_), [App.net](http://app.net/florian))


License
-------

The MIT License (MIT)

Copyright (c) 2014 Florian Eckerstorfer

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
