# frozen_string_literal: true

n = gets.chomp.to_i
s = gets.chomp.chars

# もういいや 最初に###が最後でおわるかどうか判断するわ
endbyblack = true
firstarrablack = s[-1] == '#' ? 1 : 0
(0...n - 1).to_a.each do |i|
  endbyblack = false if s[i] == '#' && s[i + 1] == '.'
  firstarrablack += 1 if s[i] == '#' && endbyblack == true
end

if endbyblack
  puts 0
  exit
end

w = 0
b = s[0] == '#' ? 1 : 0
whiteon = false
(1...n).to_a.each do |i|
  if whiteon && s[i] == '.'
    w += 1
  elsif s[i - 1] == '#' && s[i] == '.'
    w += 1
    whiteon = true
  elsif s[i] == '#'
    b += 1
  end
end
p firstarrablack
puts [w, b, firstarrablack].min
