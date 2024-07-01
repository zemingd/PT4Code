n, m, l = gets.chomp.split.map(&:to_i)
a = n.times.map{ gets.chomp.split.map(&:to_i) }
b = m.times.map{ gets.chomp.split.map(&:to_i) }

n.times do |n_i|
  puts l.times.map{|l_i|
    m.times.reduce(0){|t, m_i|
      t + a[n_i][m_i] * b[m_i][l_i]
    }
  }.join(" ")
end

