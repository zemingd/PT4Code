arr = Array.new(26) {0}

while line = gets
  line.chomp!

  line.downcase.gsub(/[^a-z]/, '').each_codepoint {|c| arr[c - 0x61] += 1}
end

arr.each_with_index {|c, i| puts "#{"%c" % (i + 0x61)} : #{c}"}

