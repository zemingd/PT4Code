require 'pp'

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end

N, a_list = gets_n_and_i_list

index = []
(N-1).step(0, -2){|i| index.push(i)}
if index.last == 0
  1.step(N-1, 2){|i| index.push(i)}
else
  0.step(N-1, 2){|i| index.push(i)}
end

index.each do |e|
  print a_list[e].to_s + " "
end
print "\n"
