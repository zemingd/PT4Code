N,K=gets.split.map(&:to_i)
v = gets.split.map(&:to_i)
T=[N,K].min
ans = 0
(0..T).each do |a|
  (0..(T-a)).each do |b|
    have = v[0...a] + v[N-b...N] || [0]
    sum = have.inject(&:+) || 0
    have.sort!
    ([T-a-b, have.size].min).times do |i|
      break if have[i] >= 0
      sum -= have[i]
    end
    ans = sum if sum > ans
  end
end

puts ans