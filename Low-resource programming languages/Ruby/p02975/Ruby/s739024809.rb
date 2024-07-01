n = gets.to_i
x = gets.split.map(&:to_i)

if x.uniq.count == 1
  if x.uniq.first == 0
    puts "Yes"
    exit
  else
    puts "No"
    exit
  end
end

if x.uniq.count == 2
  a, b = x.uniq.sort
  unless a == 0
    puts "No"
    exit
  end

  unless n % 3 == 0
    puts "No"
    exit
  end

  unless x.count(0) == (n / 3)
    puts "No"
    exit
  end

  puts "Yes"
  exit
end

unless x.uniq.count == 3
  puts "No"
  exit
end

a, b, c = x.uniq
a_count = x.count(a)
b_count = x.count(b)
c_count = x.count(c)

unless a_count == b_count
  puts "No"
  exit
end

unless a_count == c_count
  puts "No"
  exit
end

m1, m2, m3 = [a, b, c].sort
result = true
while m3 > 0 do
  b1 = m1 % 2
  b2 = m2 % 2
  b3 = m3 % 2
  if [b1, b2, b3].count(1) == 1
    result = false
    break
  end

  if [b1, b2, b3].count(1) == 3
    result = false
    break
  end

  m1 /= 2
  m2 /= 2
  m3 /= 2
end

if result
  puts "Yes"
else
  puts "No"
end