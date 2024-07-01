n = gets.chomp.to_i
s = gets.chomp

def fill_right_black(idx, str)
  str[idx..-1].split("").count(".")
end

def fill_left_white(idx, str)
  str[0..idx].split("").count("#")
end

score1 = score2 = 0
i = s.index("#.")
score1 = fill_right_black(i + 1, s) if i

i = s.rindex("#.")
score2 = fill_left_white(i, s) if i
puts [score1, score2].min