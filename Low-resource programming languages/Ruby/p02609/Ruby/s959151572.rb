N = gets.chomp.to_i
X = gets.chomp

x_i = []
N.times do |i|
  bit_x = X.dup
  r = bit_x[i] == "1" ? "0" : "1"
  bit_x[i] = r
  x_i.append(bit_x)
end
x_i.each do |bit_x|
  x = bit_x.to_i(2)
  p = bit_x.count("1")
  c = 0

  while x > 0 do
    x = x % p
    p = x.to_s(2).count("1")
    c += 1
  end
  puts c
end