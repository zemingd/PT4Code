#/usr/bin/ruby
#encoding: utf-8

# input
n = gets.to_i
s = gets.split

p_flag = false
w_flag = false
g_flag = false 
y_flag = false

# compute
(0..n-1).each do |i|
  case s[i]
  when 'P' then
    p_flag = true
  when 'W' then
    w_flag = true
  when 'G' then
    g_flag = true
  when 'Y' then
    y_flag = true
  end
end

#puts "p_flag = #{p_flag}"
#puts "w_flag = #{w_flag}"
#puts "g_flag = #{g_flag}"
#puts "y_flag = #{y_flag}"


cnt = 0
[p_flag,w_flag,g_flag,y_flag].each do |i|
  if i == true
    cnt += 1
  end
end

if cnt == 3 
  puts "Three"
else 
  puts "Four"
end
