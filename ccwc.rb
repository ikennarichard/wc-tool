#!/usr/bin/env ruby
# Save as `ccwc`, then `chmod 755 ccwc.rb`, and run as `./ccwc.rb`.

require 'optparse'
require_relative 'utils'

options = {}

OptionParser.new do |opts|
  opts.banner = 'Usage: ./ccwc.rb [OPTION]... [FILE]...'

  opts.on('-c', '--bytes', 'print the byte count') do |c|
    options[:bytes] = c
  end

  opts.on('-l', '--lines', 'print the line count') do |l|
    options[:lines] = l
  end
end.parse!

file_path = ARGV.first

if file_path.nil?
  puts 'File path is missing. Usage: ./ccwc.rb [OPTION] [FILE]'
  exit 1
end

if File.exist?(file_path)
  if options[:bytes]
    CountOptions.count_bytes(file_path)
  elsif options[:lines]
    CountOptions.count_lines(file_path)
  else
    puts 'Please specify an option (-c or -l).'
  end
else
  puts "ccwc: #{file_path}: No such file or directory"
end
