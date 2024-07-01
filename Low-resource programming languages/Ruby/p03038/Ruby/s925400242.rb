n,m = gets.split.map(&:to_i)
ar = gets.split.map(&:to_i)

h = Hash.new(0)

ar.each{|i| h[i] += 1}

m.times do |i|
  a,b = gets.split.map(&:to_i)
  h[b] += a
end

h = h.sort_by{|a,b| -a}.to_h
ans, count = 0,0

#p h

h.each do |a,b|
  break if count >= n
  b.times do
    break if count >= n
    ans += a
    count += 1
  end
end

puts ans
