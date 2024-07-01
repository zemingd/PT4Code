N = gets.to_i
A = gets.split.map(&:to_i)
bits = Array.new(60, 0)
A.each do |v|
  60.times do |i|
    bits[i] += 1 if v[i] > 0
  end
end
puts 60.times.inject(0){|s,i| s + (1 << i) * (bits[i] * (N - bits[i])) }