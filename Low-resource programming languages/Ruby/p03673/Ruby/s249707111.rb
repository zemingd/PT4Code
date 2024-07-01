n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = []
bit = a.length-1
flg = false

n.times do |i|
  b << a[bit]
  if flg
    if a.length%2 == 0
      bit += 2
    else
      bit += 1
    end
  else
    bit -= 2
  end
  if bit <= 0
    bit = 0
    flg = true
  end
end

puts b.join(" ")

