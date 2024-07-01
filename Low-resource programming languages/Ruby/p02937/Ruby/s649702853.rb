s = gets.chomp.split("")
t = gets.chomp.split("")

s_length = s.length
t_length = t.length

string = ""
s_count = 0
t_count = 0

while t_count < t_length do
  s.each do |s_i|
    string << s_i
    if s_i == t[t_count]
      t_count += 1
    end
    s_count += 1
    break if t_count == t_length
  end
  if s_count == s_length * t_length
    s_count = -1
    break
  end
end

puts s_count