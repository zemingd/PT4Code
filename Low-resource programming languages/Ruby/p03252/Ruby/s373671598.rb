s = gets.chomp
t = gets.chomp
n = s.length
a = []
key = 0
(0..(n-1)).each do |i|
  if s[i] != t[i]
    if a.include?(s[i]) || a.include?(t[i])
      key = 1
      break
    else
      s = s.gsub(s[i], "1").gsub(t[i], s[i]).gsub("1", t[i])
      a.push(s[i])
    end
  end
end
puts key == 0 ? "Yes" : "No"

