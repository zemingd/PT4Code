require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# [a, b].min が遅いので
def min(a, b)
  return a < b ? a : b
end

# [a, b].max が遅いので
def max(a, b)
  return a > b ? a : b
end

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i).sort
end
N, l_list = gets_n_and_i_list

total = 0
1.upto(N-1) do |i|
  a = l_list[i]
  min_k = i + 1
  i.times do |j|
    b = l_list[j]
    min_k.upto(N-1) do |k|
      c = l_list[k]
      if c < a + b
        total += 1
      else
        break
      end
    end
  end
end

# 0.upto(N-3) do |i|
#   a = l_list[i]
#   (i+1).upto(N-2) do |j|
#     b = l_list[j]
#     (j+1).upto(N-1) do |k|
#       if l_list[k] < a + b
#         total += 1
#       else
#         break
#       end
#     end
#   end
# end

puts total