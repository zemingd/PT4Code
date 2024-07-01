h, w = gets.chomp.split.map(&:to_i)
a_s = h.times.map{gets.chomp.chars}


def remove a_s
  a_s.each do |a|
    a_s.delete(a) unless a.include?("#")
  end
  a_s
end

a_s = remove a_s
a_s = remove a_s.transpose
a_s = a_s.transpose

a_s.each do |a|
  puts a.join()
end
