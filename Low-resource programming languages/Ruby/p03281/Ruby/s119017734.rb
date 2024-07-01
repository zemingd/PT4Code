N = gets.to_i
cnt = 0
(1..N).each do |i|
  dn = 0
  next if i.even?
  (1..i).each do |n|
    dn += 1 if i%n == 0
  end
  cnt += 1 if dn == 8
end

puts cnt