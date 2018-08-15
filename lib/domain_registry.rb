require "domain_registry/version"

module DomainRegistry
  class << self
    def find(tld)
      load_data
      @db[tld]
    end

    def load_data
      @db ||= open('./db.yml', 'r') {|f| YAML.load(f)}
    end
  end
end
