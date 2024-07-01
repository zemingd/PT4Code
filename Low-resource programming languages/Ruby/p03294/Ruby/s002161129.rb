def koyakusu(x, y)
  loop do
    k = y % x
    if k == 0
      return x
    end
    y = x
    x = k
  end
end

def kobaisu(x, y)
  return x * y / koyakusu(x, y)
end

n = gets.to_i
array = gets.chomp.split(" ").map(&:to_i);
a = array.dup

(a.size - 1).times do
  a.sort!
  a << kobaisu(a[0], a[1] )
  a.slice!(0..1)
end
m = a[0] - 1
ans = 0
array.each do |i|
  ans += m % i
end
puts ans