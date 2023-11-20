#!/usr/bin/env ruby

require 'optparse'
require_relative 'utils'

options = {}

OptionParser.new do |opts|
  opts.banner = "Usage: ./ccwc.rb [OPTION]... [FILE]..."

  opts.on("-c", "--bytes", "print the byte count") do |c|
    options[:bytes] = c
  end
end.parse!

file_path = ARGV.first

if file_path.nil?
  puts 'File path is missing. Usage: ./ccwc.rb [OPTION] [FILE]'
  exit 1
end

if options[:bytes]
  CountOptions.count_bytes(file_path)
else
  puts 'Please specify a valid option (-c)'
end