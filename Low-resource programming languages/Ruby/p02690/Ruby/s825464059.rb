x = gets.chomp.to_i
# a > b
a = 0
b = 0

while a**5 < x
  a += 1
end

if a**5 == x
  puts "#{a} 0"
  exit
end

a -= 1

while a**5 - b**5 < x
  b -= 1
end

if a**5 - b**5 == x
  puts "#{a} #{b}"
  exit
end

a += 1
b = 0


while a**5 - b**5 > x
  b += 1
end

if a**5 - b**5 == x
  puts "#{a} #{b}"
  exit
end

if a < b
  b -= 1
end

while a == true
  a += 1
  b += 1
  if a**5 - b**5 == x
    puts "#{a} #{b}"
    exit
  end
end
