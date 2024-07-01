n, m = gets.split(' ').map(&:to_i)

es = []

m.times do
  a, b, c = gets.split(' ').map(&:to_i)
  es << [a-1, b-1, -c]
end

INF = Float::INFINITY
d = Array.new(n, INF)
d[0] = 0
(1..n).each do |i|
  updated = false
  es.each do |e|
    if d[e[0]] != INF && d[e[1]] > d[e[0]] + e[2]
      d[e[1]] = d[e[0]] + e[2]
      updated = true
      if i == n
        puts "inf"
        exit
      end
    end
  end
  break unless updated
end

puts(-d[n-1])