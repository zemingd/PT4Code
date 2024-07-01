require 'pp'
$DEBUG ? define_method(:dpp){|e|pp e} : define_method(:dpp){|e|}

# Nと空白区切の入力値を数値の配列で返却する
def gets_n_and_i_list()
  return gets.chomp.to_i, gets.chomp.split(" ").map(&:to_i)
end
n, a_list = gets_n_and_i_list
#a_list = (2..200000).to_a

count = 0
a_list.sort!

if a_list.first == 1
  if a_list.size >= 2
    if a_list[0] != a_list[1]
      puts 1
    else
      puts 0
    end
  else
    puts 1
  end
  exit
end

count_h = a_list.group_by(&:itself).map{|k,v| [k, v.count] }.to_h
dup_es = count_h.select do |k, v|
  v > 1
end.map{|k,v| k}

a_list = a_list - dup_es

min_a = a_list.min
max_a = a_list.max

ans = [min_a]

0.upto(a_list.size - 1) do |i|
  a = a_list.first
  if a
    candidates = a_list.select do |aa|
      aa % a == 0
    end

    # (max_a / a).times do |i|
    #   candidates.push a * (i + 1)
    # end

    a_list = a_list - candidates
    dpp [a, a_list]
    break if a_list.empty?
    ans.push a_list.first
  else
    break
  end
end
puts ans.uniq.compact.size