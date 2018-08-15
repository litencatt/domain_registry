# DomainRegistry

Domain Registry's database search tool.

Original page: https://www.iana.org/domains/root/db

## Usage

```rb
[1] pry(main)> DomainRegistry.find(".sh")
=> {"type"=>"country-code", "registry"=>"Government of St. Helena", "url"=>"/domains/root/db/sh.html"}
```

### Update data
```
$ bundle exec rake update
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/domain_registry.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
