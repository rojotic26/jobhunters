====================
JOBHUNTERS
---------------------
[![Gem Version](https://badge.fury.io/rb/jobhunters.svg)](http://badge.fury.io/rb/jobhunters)
[![Build Status](https://travis-ci.org/rojotic26/jobhunters.svg?branch=master)](https://travis-ci.org/rojotic26/jobhunters)

home: [https://github.com/rojotic26/jobhunters.git](https://github.com/rojotic26/jobhunters.git)
Gem to obtain the recent job offers from Tecoloco, a job search offer website in Central America.

## Usage

This gem may be used as a command line utility to obtain information of some job offers in CA by passing a category.

## CLI

To use the Executable File:
In order to run the executable file, just include a valid category, in this example we are requesting the marketing and sales offers, so use as a parameter the "marketing-ventas" value.

	jobhunters 'marketing-ventas'

Other category examples to try are:

>informatica-internet,
>administrativo,
>call-center.

## Code Example:
	
	require 'jobhunters'
	jobs_found = JobSearch::Tecoloco.getjobs('marketing-ventas')
	jobs_found.each do |title, date, city|
  	puts "Job offer:#{title} in #{city} until #{date}."
	end

## More Details

This gem is based on the website: [http://www.tecoloco.com/](https://github.com/soumyaray/citesight)
A website to see job offers in Central America.

>lib/JobSearch: This class get the category of jobs you are looking for and return a hash of job offers information.
>
>bin/jobhunters: This file is our executable file.
>
>GemFile: This file is just to specified which gems we are using.

Our team-members are:

>Mauricio Jaime - mjboyarov@gmail.com / Nicaragua
>
>Roger Gomez - rojotic26@gmail.com / Nicaragua
>
>Edwin Mejia - eddwin@live.com / El Salvador
