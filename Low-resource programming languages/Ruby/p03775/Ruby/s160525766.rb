

N = gets.to_i

ans = 10

(1..10**5).each do |i|
  if N % i == 0
    v = [i.to_s.size, (N / i).to_s.size].max
    ans = v if ans > v
  end
end

puts ans