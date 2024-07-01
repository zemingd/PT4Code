s = gets.chomp
t = gets.chomp

ans = "Yes"
s_arr = Array.new(26, -1)
t_arr = Array.new(26, -1)
abc = 'a'..'z'
for i in 0..(s.size - 1) do
  s_i = abc.find_index(s[i])
  t_i = abc.find_index(t[i])

  if s_arr[s_i] != -1 || t_arr[t_i] != -1
    if s_arr[s_i] != t_i || t_arr[t_i] != s_i
      ans = "No"
      break
    end
  end
  s_arr[s_i] = t_i
  t_arr[t_i] = s_i
end

puts ans