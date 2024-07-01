a,b = gets.split.map(&:to_i)
s = gets.chomp.chars

unless s.first(a).all? {|c| ('0'..'9').include?(c) }
  puts "No"
  exit
end

unless s[a] == '-'
  puts "No"
  exit
end

unless s.last(b).all? {|c| ('0'..'9').include?(c) }
  puts "No"
  exit
end

puts "Yes"
