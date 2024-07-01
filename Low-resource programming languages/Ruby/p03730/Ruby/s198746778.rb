require 'pp'

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end

# Yes or Noを返却する
def yes_no(bool, y = "YES", n = "NO")
  bool ? y : n
end

A, B, C = gets_i_list

count = 1
mod_list = []
while true
  mod = A * count % B
  if mod == C
    puts "YES"
    exit
  end
  if mod_list.include?(mod)
    puts "NO"
    exit
  end
  mod_list.push(mod)
  count += 1
end
