n = gets.to_i
s = gets.chars
v = s.uniq.size

if n == v
  puts 0
elsif v == 1
  puts 1
else
  max = 0
  (0...n).each do |i|
    before = s[0..i]
    after = s[(i+1)...n]
    count = 0

    before.uniq.each do |c|
      count +=1 if after.include?(c)
    end
    max = count if max < count
  end
  puts max
end