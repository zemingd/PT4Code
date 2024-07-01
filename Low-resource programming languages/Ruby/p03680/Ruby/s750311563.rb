# 入力値を数値で返す
def gets_i()
  gets.chomp.to_i
end

N = gets_i
a_list = [1]
N.times do
  a_list.push gets_i
end

unless a_list.include?(2)
  puts -1
  exit
end

next_pos = a_list[0]
count = 0
while true do
  if count >= N
    puts -1
    exit
  end
  if next_pos == 2
    puts count
    exit
  end
  count += 1
  next_pos = a_list[next_pos]
end
