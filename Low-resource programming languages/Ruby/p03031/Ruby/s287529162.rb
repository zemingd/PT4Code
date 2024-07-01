require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}
class Array
  define_method(:sum){self.inject(:+).to_i} unless method_defined?(:sum)
end

# 空白区切の入力値を数値の配列で返却する
def gets_i_list()
  gets.chomp.split(" ").map(&:to_i)
end
N, M = gets_i_list

k_list = []
M.times do
  l = gets_i_list
  l.shift
  k_list.push l
end
dpp k_list
p_list = gets_i_list
total = 0
[0,1].repeated_permutation(N) do |pattern|
  dpp pattern
  ret = true
  M.times do |i|
    p = p_list[i]
    switches = k_list[i]
    dpp switches
    count = switches.map do |k|
      pattern[k-1]
    end.sum
    dpp count
    unless count % 2 == p
      ret = false
      break
    end
  end
  total += 1 if ret
end

puts total