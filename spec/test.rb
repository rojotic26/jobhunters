require 'minitest/autorun'
require 'minitest/rg'
require './lib/JobSearch.rb'

jobs_found = JobSearch::Tecoloco.getjobs('marketing-ventas')
describe 'Obtaining the jobs' do
it 'has the right number of jobs' do
jobs_found.size.must_equal 15
end
end
