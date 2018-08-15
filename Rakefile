require "bundler/gem_tasks"
require "rake/testtask"
require 'open-uri'
require 'nokogiri'
require 'yaml'

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.libs << "lib"
  t.test_files = FileList["test/**/*_test.rb"]
end

task :default => :test

desc 'Update root zone database yaml'
task :update do
  Registry = Struct.new(:tld, :url, :type, :name)

  uri = "https://www.iana.org/domains/root/db"
  charset = nil

  html = open(uri) do |f|
    charset = f.charset
    f.read
  end

  doc = Nokogiri::HTML.parse(html, nil, charset)
  registries = {}
  doc.xpath("//table[@id='tld-table']//tbody//tr").each do |node|
    tld  = node.children[1].children[1].children[0].text
    url  = node.children[1].children[1].children[0].attributes["href"].value
    type = node.children[3].text
    registry = node.children[5].text
    registries[tld] = {"type" => type, "registry" => registry, "url" => url}
  end

  YAML.dump(registries, File.open("./db.yml", "w"))
end
