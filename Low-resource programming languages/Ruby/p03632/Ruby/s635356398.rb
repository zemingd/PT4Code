a,b,a2,b2 = gets.chomp.split(" ").map(&:to_i)
alice = a...b
bob = a2...b2

if alice.include?(a2)
  if alice.include?(b2)
    puts b2-a2
    exit
  else
    puts b-a2
    exit
  end
else
  if alice.include?(b2)
    puts b2-a
    exit
  else
    puts 0
    exit
  end
end