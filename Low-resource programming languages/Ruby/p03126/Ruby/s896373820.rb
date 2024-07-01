n,m = gets.split(" ").map(&:to_i)
a = []
n.times do |n_c|
  get_num = gets.split(" ").map(&:to_i)
  k = get_num[0]
  a_tmp = get_num.drop(1)

  a << a_tmp
end

flag = []

m.times do |m_c|
  t_flag = true
  a.each do |row|
    if row.find { |cell| cell == m_c+1}.nil?
      t_flag = false
      break
    end
  end
  flag.push(t_flag)
end

p flag.count {|f| f === true}
  
