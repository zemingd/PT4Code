n = gets.to_i
s = gets.chomp


i = 0
min = 10000000000

b_a = Array.new(n = 1, 0)
w_a = Array.new(n = 1, 0)
s.each_char.with_index do |c, i|
  if c == '#'
    b_a[i] = b_a[i - 1] + 1
  else
    b_a[i] = b_a[i - 1]
  end
end

def get_num(i, j, a)
  if i == 0
    l = 0
  else
    l = a[i - 1]
  end
  num = a[j] - l
  return num
end

s.each_char.with_index do |c, i|
  if c == '.'
    w_a[i] = w_a[i - 1] + 1
  else
    w_a[i] = w_a[i - 1]
  end
end

s.each_char.each_cons(2) do |c1, c2|
  i = i + 1
  if c1 == '#' && c2 == '.'
    #l_w = s[0..i - 1].count('.')
    #l_b = s[0..i - 1].count('#')
    #r_w = s[i..-1].count('.')
    #r_b = s[i..-1].count('#')
    l_w = get_num(0, i - 1, w_a)
    l_b = get_num(0, i - 1, b_a)
    r_w = get_num(i, -1, w_a)
    r_b = get_num(i, -1, b_a)
    co = [l_b + r_w, l_b + r_b, l_w + r_w].min
    if co < min
      min = co
    end
  end
end

if min == 10000000000
  puts 0
else
  puts min
end























