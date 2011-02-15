Gem::Specification.new do |s|
	s.name = 'only_once'
	s.version = '0.1'
	s.date = Time.now.strftime("%a %b %d, %Y")
	s.summary = 'Execute something, but only once.'
	s.description = 'Run a block only once during the lifetime of a program.'
	s.author = 'katmagic'
	s.email = 'the.magical.kat@gmail.com'
	s.homepage = 'https://github.com/katmagic/only_once'
	s.rubyforge_project = 'only_once'
	s.files = 'lib/only_once.rb'

	if ENV['GEM_SIG_KEY']
		s.signing_key = ENV['GEM_SIG_KEY']
		s.cert_chain = ENV['GEM_CERT_CHAIN'].split(",") if ENV['GEM_CERT_CHAIN']
	else
		warn "environment variable $GEM_SIG_KEY unspecified; not signing gem"
	end
end
