s = gets.chomp.split("").map(&:to_i).uniq
k = gets.to_i

if s.size == 1
  puts s[0]
else
  if s.all? { |n| n == 1 }
    puts 1
  else
    puts s.reject { |n| n == 1 }.first
  end
end
