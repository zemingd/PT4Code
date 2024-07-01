abcd = gets.chomp!.chars
ops = ['+', '-']
(1 << 3).times do |i|
  ans = 0
  ans = eval("#{abcd[0]} #{ops[i >> 0]} #{abcd[1]} #{ops[i >> 1]} #{abcd[2]} #{ops[i >> 2]} #{abcd[3]}")
  if ans == 7
    puts "#{abcd[0]}#{ops[i >> 0]}#{abcd[1]}#{ops[i >> 1]}#{abcd[2]}#{ops[i >> 2]}#{abcd[3]}=7"
    break
  end
end
