module CountOptions
  # print byte counts
  def self.count_bytes(file_path)
    byte_count = File.size(file_path)
    puts "#{byte_count} #{file_path}"
  end

  # print line counts
  def self.count_lines(file_path)
    line_count = File.foreach(file_path).count
    puts "#{line_count} #{file_path}"
  end

  # print word counts
  def self.count_words(file_path)
    word_count = File.read(file_path).split(/\s+/)
    puts "#{word_count.size} #{file_path}"
  end

  # print character counts
  def self.count_chars(file_path)
    chars_count = File.read(file_path).bytesize
    puts "#{chars_count} #{file_path}"
  end

  # print character counts
  def self.print_default(file_path)
    line_count = File.foreach(file_path).count
    word_count = File.read(file_path).split(/\s+/).size
    byte_count = File.size(file_path)
    print "#{line_count} #{word_count} #{byte_count} #{file_path}"
  end

  # read from stdin if theres no filename and print line
  def self.print_input_lines_count(input)
    line_count = 0
    input.each_line do
      line_count += 1
    end
    puts line_count
  end
end
