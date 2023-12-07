#!/usr/bin/env ruby
# Save as `ccwc`, then `chmod 755 ccwc.rb`, and run as `ccwc or ./ccwc.rb`.

require 'optparse'
require_relative 'utils'


options = {}

OptionParser.new do |opts|
  opts.banner = 'Usage: ccwc [OPTION]... [FILE]...'

  opts.on('-c', '--bytes', 'print the byte counts') do |c|
    options[:bytes] = c
  end

  opts.on('-l', '--lines', 'print the line counts') do |l|
    options[:lines] = l
  end

  opts.on('-w', '--words', 'print the word counts') do |w|
    options[:words] = w
  end

  opts.on('-m', '--chars', 'print the character counts') do |c|
    options[:chars] = c
  end
end.parse!

file_path = ARGV.first

if file_path.nil? && options[:lines] == false
  puts 'File path is missing. Usage: ccwc [OPTION] [FILE]'
  exit 1
end

if file_path.nil? && options[:lines] && !$stdin.tty?
  CountOptions.print_input_lines_count(ARGF)
elsif file_path && File.exist?(file_path)
  if options[:bytes]
    CountOptions.count_bytes(file_path)
  elsif options[:lines]
    CountOptions.count_lines(file_path)
  elsif options[:words]
    CountOptions.count_words(file_path)
  elsif options[:chars]
    CountOptions.count_chars(file_path)
  else
    CountOptions.print_all(file_path)
  end
else
  puts "ccwc: #{file_path}: No such file or directory" unless file_path.nil?
end
