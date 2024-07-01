a, b, c = gets.map(&:to_i)
def how(a, b, c)
  if (a != b) && (b != c) && (c != a)
    puts "No"
  elsif a == b && b == c
    puts "Yes"
  else
    puts "No"
  end
end

puts how(a, b, c)
