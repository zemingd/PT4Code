N, K = gets.split.map(&:to_i)
b = Array.new(N, 0)
a = gets.split.map(&:to_i)
a.each do |e|
    b[e - 1] += 1
end
b.sort!
puts 0 < N - K ? b[0, N - K].inject(&:+) : 0