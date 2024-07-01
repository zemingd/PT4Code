require 'pp'

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s_list = gets_nsp_list
s = []

s_list.each do |c|
  if c == "B"
    s.pop
  else
    s.push(c)
  end
end

puts s.join
