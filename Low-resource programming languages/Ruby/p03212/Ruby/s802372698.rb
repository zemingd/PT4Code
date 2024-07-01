n = gets.to_i

s='753'

r = 0

10.times do |k|
  k = k+1
  (3**k).times do |i|
    i = i.to_s(3).rjust(k, ?0)
    t = k.times.map{|j| s[i[j].to_i]}.join
    next unless s.chars.all?{|c| t.include? c}
    r += 1 if t.to_i <= n
  end
end

puts r
