K = gets.chomp.to_i
answer = 0

1.upto(K) do |a|
  1.upto(K) do |b|
    1.upto(K) do |c|
      answer += a.gcd(b).gcd(c)
    end
  end
end

puts answer