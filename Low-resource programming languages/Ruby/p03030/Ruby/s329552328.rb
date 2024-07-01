n = gets.to_i
dishes = []
n.times do |i|
  s, p =  gets.chomp.split
  p = p.to_i * -1
  dishes << [i+1, s, p]
end
dishes.map { |i,s,p| s }.uniq.sort.each do |d|
  dishes.select {|i,s,p| s == d }.sort { |(i1,s1,p1), (i2,s2,p2)| p1<=>p2 }.each do |dish|
    puts dish[0]
  end
end
