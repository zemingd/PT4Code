# https://atcoder.jp/contests/abc120/tasks/abc120_c

input = gets.strip

string = []
input.each_char { |i| string << i }

rem = 0

while true
  s_index = -1
  
  string.each_cons(2).with_index do |s, ix|
    if (s[0] == '0' && s[1] == '1') || (s[0] == '1' && s[1] == '0')
      s_index = ix
      break
    end
  end
  
  if s_index == -1
    can_remove = false
    break
  end
  string.delete_at(s_index)
  string.delete_at(s_index)
  rem += 2
  s_index = -1
end

puts rem
