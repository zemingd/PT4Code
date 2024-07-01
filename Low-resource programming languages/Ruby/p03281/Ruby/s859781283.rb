N = gets.to_i

def divisor_count(n)
  ret = 0
  (1..(Math.sqrt(n))).each do |m|
    if n % m == 0
      ret += (n / m == m ? 1 : 2)
    end
  end
  ret
end

ans = (1..N).count do |n|
  n.odd? && divisor_count(n) == 8
end
puts ans