K = gets.to_i

ret = 0
1.upto(K) do |k|
  1.upto(K) do |l|
    1.upto(K) do |m|
      ret += m.gcd(l).gcd(k)
    end
  end
end

puts ret