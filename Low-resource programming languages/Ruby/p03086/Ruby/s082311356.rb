require 'pp'

# 入力値を文字の配列で返却する
def gets_nsp_list()
  gets.chomp.split("")
end

s_list = gets_nsp_list
acgt = %w(A C G T)

acgt_list = [0]
count = 0
s_list.each do |s|
  if acgt.include?(s)
    count += 1
  else
    acgt_list.push(count)
    count = 0
  end
end

puts acgt_list.max