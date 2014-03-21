# HandyConst

Easy class and instance methods definition for consts access. And no more freeze!

## Installation

Add to Gemfile:

```ruby
gem 'handy_const'
```

## Usage

Include HandyConst in your class and define some constants

```ruby
class Foo
  include HandyConst

  const :foo, 'foo'
end

# Const
Foo::FOO
=> "foo"

# Class method
Foo.foo
=> "foo"

# Instance method
Foo.new.foo
=> "foo"

# Frozen for you!
Foo.foo.frozen?
=> true
```

Call `HandyConst.extend_module!` if you want to make available `const` method in any class and module

```ruby
HandyConst.extend_module!

class Bar
  const :bar, 'bar'
end

Bar::BAR
# => "bar"
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
