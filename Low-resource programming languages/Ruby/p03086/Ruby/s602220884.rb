a = gets.chomp

if a.scan(/[ACGT]+/).empty?
  puts 0
else
  puts a.scan(/[ACGT]+/).max {|a, b| a.size <=> b.size}
end