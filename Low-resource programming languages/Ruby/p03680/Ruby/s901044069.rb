n = gets.to_i
a = []
n.times do
  a << gets.to_i
end

if a[0] == 2
  puts "1"
  exit
end

dec = a[0] - 1
counter = 1
until counter > n
  dec = a[dec]
  counter += 1
  if dec == 2
    puts counter
    exit
  end
  dec -= 1
end

puts "-1"
