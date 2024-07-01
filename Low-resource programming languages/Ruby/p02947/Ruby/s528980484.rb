n = gets.to_i
s = []
n.times do |i|
  s[i] = gets.strip
end
result = 0

(n-1).times do |i|
  (i+1).step(n-1) do |j|
    ang = s[j].dup
    s[i].length.times do |k|
      ang.slice!(s[i][k])
    end
    if ang == ''
      result += 1
    end
  end
end

puts result