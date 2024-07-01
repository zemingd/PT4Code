n = gets.to_i
s = gets.chomp.chars
left_start = -1
right_start = -1
left_ans = 10000000
right_ans = 10000000
s.each_with_index do|chara, index|
  if chara == "#" && left_start == -1
    left_start = index
    left_ans = 0
  end
  if left_start != -1
    if chara == "."
      left_ans += 1
    end
  end
end

if left_start != -1
  s = s.reverse
  s.each_with_index do|chara, index|
    if chara == "." && right_start == -1
      right_start = index
      right_ans = 0
    end
    if right_start != -1
      if chara == "#"
        right_ans += 1
      end
    end
  end

  right_ans = 20000000

  if right_start == -1
    puts "0"
  elsif left_ans > right_ans
    puts right_ans.to_s
  else
    puts left_ans.to_s
  end
else
  puts "0"
end