n = gets.chomp.to_i
s = gets.chomp

def fill_right_black(idx, str)
  len = str.length - idx
  cnt = str[idx..-1].split("").count(".")
  str[idx..-1] = "#" * len
  [cnt, str]
end

def fill_left_white(idx, str)
  cnt = str[0..idx].split("").count("#")
  str[0..idx] = "." * idx
  [cnt, str]
end

score1 = score2 = 0

str = s.dup
first_i = str.rindex("#.")
i = first_i
while i
  cnt, str = fill_right_black(i + 1, str)
  score1 += cnt
  i = str.rindex("#.", i)
end
score2, str = fill_left_white(first_i, s) if first_i
puts [score1, score2].min
