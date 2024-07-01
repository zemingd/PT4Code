s = gets.chomp.split("")
t = gets.chomp.split("")

result = 0

string = s.dup

while t.length > 0 do
  s_index = string.index(t[0])
  if s_index.nil?
    result = -1
    is_break = true
    break
  else
    result += (s_index + 1)
    string.slice!(0..s_index)
    string = string + s
    t.slice!(0)
  end
end

puts result