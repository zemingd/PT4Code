# 入力値を数値で返す
def gets_i()
  gets.chomp.to_i
end

N = gets_i

n_list = (1..N).to_a
p_list = (2..N).to_a + [1]

sum = 0
n_list.each_with_index do |n, i|
  sum += n % p_list[i]
end
puts sum
