n = gets.strip.to_i
s = readlines.map {|line| line.strip.split('').sort }

result = 0

n.times do |i|
  tmp = s[i]
  (i+1...n).each do |j|
    result+=1 if tmp == s[j]
  end
end

p result