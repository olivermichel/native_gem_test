
Gem::Specification.new 'example', '0.1' do |s|
  s.authors = ['Oliver Michel']
  s.summary = 'Example'
  s.extensions = ['ext/example/extconf.rb']
  s.files = ['ext/example/example.c', 'ext/example/extconf.rb', 'lib/example.rb']
end
