dishes = 5.times.map{gets.to_i}
amari = []

dishes.each do |i|
  i%10 == 0 ? amari.push(10) : amari.push(i%10)
end

ans = 0
last_index = amari.index(amari.min)
dishes.each.with_index do |i, index|
  if index == last_index
    ans += i
  else
    ans += ((i/10.0).ceil * 10).to_i
  end
end

puts ans
