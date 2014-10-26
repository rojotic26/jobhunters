# -*- coding: utf-8 -*-
require 'minitest/autorun'
require './lib/jobhunters/JobSearch.rb'
#Tests
jobs_found = JobSearch::Tecoloco.getjobs('marketing')

describe JobSearch do

  describe 'Obtaining the jobs' do
    it 'has the right number of jobs' do
      jobs_found.size.must_equal 15
    end
  end

  describe 'Only future jobs' do
    jobs_found.each do |title, date, city, details|

      it 'Title is empty' do
        title.wont_be_nil
      end

      it 'Date is empty' do
        date.wont_be_nil
      end

      it 'City is empty' do
        city.wont_be_nil
      end

      it 'Details is empty' do
        details.wont_be_nil
      end

    #  it 'Date is future' do
    #    assert_operator date, :>=, DateTime.now
    #  end


      it 'City is in CA' do
        ['Nicaragua','Costa Rica','El Salvador','Belice','Honduras','PanamÃ¡','Guatemala','RepÃºblica Dominicana'].must_include city
      end

    end
  end
end
