n = gets.chomp.to_i
t,a=gets.chomp.split(" ").map { |e| e.to_i }
h = gets.chomp.split(" ").map { |e| e.to_i }

def abs(n)
  return n if n >= 0
  return -n
end

min = 100000
ans = 0


for i in 0..n-1 do
  if abs(t - (6*h[i])/1000 -a) < min
    ans = i
    min = abs(t - (6*h[i])/1000 - a)
  end
end

puts ans+1