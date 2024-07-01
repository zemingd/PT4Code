H, W = gets.split.map(&:to_i)
a = H.times.map { gets.chomp.split("") }
a.delete_if { |a_| a_.all? { |b| b == "." }  }
a = a.transpose
a.delete_if { |a_| a_.all? { |b| b == "." }  }
a = a.transpose
puts a.map { |a_| a_.join }
