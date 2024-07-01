N, M = gets.split.map(&:to_i)

num_array = []
ok_card_num = 0

M.times{|n|
  l_num, r_num = gets.split.map(&:to_i)

  if num_array.empty?
    num_array = [*l_num..r_num]
  end

  num_array = (num_array & [*l_num..r_num])
}

id_num_array = [*1..N]

puts((id_num_array & num_array).length)
