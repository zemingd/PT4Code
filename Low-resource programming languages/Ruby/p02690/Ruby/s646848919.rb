n = gets.to_i
res = nil
2000.times do |a|
  break unless res.nil?
  2000.times do |b|
    break unless res.nil?
    res = [a, b] if a * b == n
  end
end

puts res.join(' ')
    