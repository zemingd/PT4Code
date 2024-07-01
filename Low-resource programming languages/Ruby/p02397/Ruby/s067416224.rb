while input = gets
  num = input.chomp.split.map(&:to_i)
  puts "#{num.min} #{num.max}"
end