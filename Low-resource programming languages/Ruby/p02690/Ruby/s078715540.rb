n = gets.to_i
res = nil
5000.times do |a|
  break unless res.nil?
  5000.times do |b|
    break unless res.nil?
    res = [a, b] if a * b == n
  end
end

res = [0, 0] if res.nil?
puts res.join(' ')