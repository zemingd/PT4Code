s = gets.chomp.split('')
t = gets.chomp.split('')

s.each_with_index do |a, index|
  b = t[index]
  if a != b
    a_inds = s.each_with_index.select{|e, i| e == a}.map{|e| e[1]}
    b_inds = s.each_with_index.select{|e, i| e == b}.map{|e| e[1]}
    a_inds.each do |i|
      if i < index
        puts 'No'
        exit
      end
      s[i] = b
    end
    b_inds.each do |i|
      if i < index
        puts 'No'
        exit
      end
      s[i] = a
    end
  end
end
puts 'Yes'
