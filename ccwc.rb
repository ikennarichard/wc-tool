#!/usr/bin/env ruby
# Save as `ccwc`, then `chmod 755 ccwc.rb`, and run as `ccwc or ./ccwc.rb`.

require 'optparse'
require_relative 'utils'


options = {}

OptionParser.new do |opts|
  opts.banner = 'Usage: ccwc [OPTION]... [FILE]...'

  opts.on('-c', '--bytes', 'print the byte counts') do
    options[:bytes] = true
  end

  opts.on('-l', '--lines', 'print the line counts') do
    options[:lines] = true
  end

  opts.on('-w', '--words', 'print the word counts') do
    options[:words] = true
  end

  opts.on('-m', '--chars', 'print the character counts') do
    options[:chars] = true
  end
end.parse!

# get first variable in the array
file_path = ARGV.first

unless file_path || options[:lines]
  puts 'File path is missing. Usage: ccwc [OPTION] [FILE]'
  exit 1
end

if file_path.nil? && options[:lines] && !$stdin.tty?
  CountOptions.print_input_lines_count($stdin)
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
    CountOptions.print_default(file_path)
  end
else
  puts "ccwc: #{file_path}: No such file or directory" unless file_path.nil?
end
