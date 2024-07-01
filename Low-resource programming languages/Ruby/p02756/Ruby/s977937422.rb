require 'pp'

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

# 入力値を数値で返却する
def gets_i()
  gets.chomp.to_i
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
# N, M = gets_i_list
# list = gets_i_list

# 空白区切の入力を文字列の配列で返す
def get_s_list()
  gets.chomp.split(" ")
end

s_list = gets_nsp_list
Q = gets_i

i = s_list.size - 1
Q.times do
  i += 1
  t, f, c = get_s_list
  if t == "1"
    #s_list.reverse!
  elsif f == "1"
    s_list.unshift(c)
  elsif f == "2"
    s_list.push(c)
  end
end

puts s_list.join