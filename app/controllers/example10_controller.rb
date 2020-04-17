class Example10Controller < ApplicationController

	require 'csv'

	def fileread2
		params[:shop]
		evil_string = params[:shop]
		check = eval(evil_string)
	end
end
