N = gets.to_i
i, j, k = 1, 1, 1
sum = 0

def gcb(a, b)
  while b > 0
    a, b = b, a % b
  end
  a
end

def ngcd(*nums)
  d = 0
  nums.each{ |a|
    d = gcb(d, a)
  }
  d
end

(1..N).each do |i|
  (1..N).each do |j|
    (1..N).each do |k|
      sum += ngcd(i, j, k)
    end
  end
end

puts sum