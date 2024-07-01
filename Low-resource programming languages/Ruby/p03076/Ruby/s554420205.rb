a1 = []
5.times { a1 << gets.to_i }
a2 = a1.map {|e| e % 10}
a2.delete(0)

res = 0
a1.each do |e|
  if e % 10 == 0
    res += e
  else
    res += (e/10)*10 +10
  end
end

puts res + a2.min - 10