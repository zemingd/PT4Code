s = gets[0...100000]
t = gets[0...100000]

s_past = []
t_past = []

s_res = ""
t_res = ""

s.each_char do |char| #20000
  s_index = s_past.index(char) #26
  # p s_index
  # p s_past
  if s_index.nil?
    s_past.push(char)
    s_res += (s_past.count - 1).to_s
  else
    s_res += s_index.to_s
  end
end

t.each_char do |char|
  t_index = t_past.index(char)
  # p t_index
  # p t_past
  if t_index.nil?
    t_past.push(char)
    t_res += (t_past.count - 1).to_s
  else
    t_res += t_index.to_s
  end
end

if t_res == s_res
  puts "Yes"
else
  puts "No"
end

