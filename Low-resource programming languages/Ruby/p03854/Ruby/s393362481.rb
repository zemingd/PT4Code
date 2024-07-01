words = %w[dream dreamer erase eraser].map(&:reverse)
s = gets.chomp.reverse

until s.empty?
  pre = words.find { |pre| s.start_with? pre }
  unless pre
    puts 'NO'
    exit
  end

  s.slice!(pre)
end

puts 'Yes'