# n = スイッチ数, m = 電球数
n, m = gets.chomp.split(' ').map {|n| n.to_i}

k_list = [] #i番目の電球に繋がるスイッチ数
s_lists = [] #i番目の電球に繋がるスイッチのリスト
p_list = [] #i番目の電球の繋がる点灯しているスイッチの個数を2で割った余り

m.times do |i|
  line = gets.split(' ').map {|n| n.to_i}
  k = line[0]
  k_list << k
  s_lists << line.drop(1)
end
p_list = gets.split(' ').map {|n| n.to_i}

# pp k_list
# pp s_lists
# pp p_list

def check_ok?(s_case, s_lists, p_list)
  m_i = 0
  s_lists.each do |s_list|
    on_total = 0
    s_list.each do |s_id|
      on_total += s_case[s_id - 1]
    end
    return false unless on_total % 2 == p_list[m_i]
    m_i += 1
  end
  true
end

ans = 0
all_list = [0, 1].repeated_permutation(n).to_a
all_list.each do |s_case|
  ans += 1 if check_ok?(s_case, s_lists, p_list)
end

puts ans
