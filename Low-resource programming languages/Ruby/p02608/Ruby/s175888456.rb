def f(x, y, z)
  x ** 2 + y ** 2 + z ** 2 + x * y + y * z + z * x
end

N = gets.to_i

fn = Hash.new
max = Math.sqrt(N).to_i - 1
aaa = (1..max).to_a

aaa.repeated_combination(3).to_a.each do |x, y, z|
  n = f(x, y, z)
  if x == y && y == z
    fn[n] = fn[n].to_i + 1
  elsif x == y || y == z
    fn[n] = fn[n].to_i + 3
  else
    fn[n] = fn[n].to_i + 6
  end
end

(1..N).each do |i|
  p fn[i].to_i
end