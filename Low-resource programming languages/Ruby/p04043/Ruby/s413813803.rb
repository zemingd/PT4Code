s = gets.split.map(&:to_i)

unless s.include?(7)
  puts "NO"
else
  if s.select{|s| s == 5}.length == 2
    puts "YES"
  else
    puts "NO"
  end
end