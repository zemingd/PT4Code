s = $stdin.gets.chomp
t = 'A','C','G','T'
len = 0
max = 0
s.size.times do |i|
  (i..s.size).each do |j|
    if t.include?(s[j])
      len += 1
    else
      break
    end
  end
  max = [max,len].max
  len=0
end
puts max