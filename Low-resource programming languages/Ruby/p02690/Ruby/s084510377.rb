x = gets.chomp.to_f
m = x**(1/2.0)
l = []
(1..m).each do |i|
  l << i if x % i == 0
end

l.each do |i|
  a = i - 1
  b = 1
  if a**5-b**5==x
    puts "#{a} #{b}"
    return
  end
  a = i + 1
  b = -1
  if a**5-b**5==x
    puts "#{a} #{b}"
    return
  end
end