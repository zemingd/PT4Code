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
  right_ans = 0
  s.each do|chara|
    if chara == "#"
      right_ans += 1
    end
  end
  if right_ans == 0
    right_ans = 200000000
  end

  another_ans = 0
  s.each do|chara|
    if chara == "."
      another_ans += 1
    end
  end
  if another_ans == 0
    another_ans = 200000000
  end

  if right_start == -1
    puts "0"
  else
    puts [left_ans, right_ans, another_ans].min.to_s
  end
else
  puts "0"
end