# 入力値を数値で返す
def gets_i()
  gets.chomp.to_i
end

N = gets_i
a_list = [1]
N.times do
  a_list.push gets_i
end

if a_list.include?(2)
  visited_list = [0]
  count = 0
  next_i = a_list[0]
  while next_i != 2 do
    visited_list.push(next_i)
    count += 1
    next_i = a_list[next_i]
    if visited_list.include?(next_i)
      count = -1
      break
    end
  end
  puts count
else
  puts -1
end
