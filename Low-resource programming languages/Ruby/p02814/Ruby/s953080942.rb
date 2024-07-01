n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)

def tt(num)
  r = 0
  while num % 2 == 0
    r += 1
    num /= 2
  end
  r
end

t = tt(a.first)
1.upto(n-1) do |i|
  if tt(a[i]) != t
    p 0
    exit
  end
end

l = a.map{|e| e/2}.inject(:lcm)
p (m / (l * 2.0)).ceil
