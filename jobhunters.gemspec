$:.push File.expand_path("../lib", __FILE__)
require 'jobhunters/version'

Gem::Specification.new do |s|
  s.name        =  'jobhunters'
  s.version     =  JobHunters::VERSION
  s.executables << 'jobhunters'
  s.add_development_dependency 'minitest'
  s.add_development_dependency 'minitest-rg'
  s.date        =  '2014-10-26'
  s.summary     =  'Job offers search in Central American countries'
  s.description =  'Look for the recent job offers available in Central America'
  s.authors     =  ['Roger, Edwin and Mauricio']
  s.email       =  'rojotic26@gmail.com'
  s.files       =  `git ls-files`.split("\n")
  s.test_files  =  `git ls-files -- {test,spec,features}/*`.split("\n")
  s.homepage    =  'https://github.com/rojotic26/tecoloco-job-offers.git'
  s.license     =  'MIT'

  s.add_runtime_dependency 'nokogiri', '>= 1.6.2'
end
