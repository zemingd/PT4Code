s = gets.chomp.to_s.split(//)
q = gets.to_i
ary = []
q.times do
  ary << gets.split(' ')
end

ary.each do |x|
  if x[0] == "1"
    s = s.reverse
  elsif x[0] == "2"
    if x[1] == "1"
      s = s.reverse
      s << x[2]
      s = s.reverse
    elsif x[1] == "2"
      s << x[2]
    end
  end
end

puts s.join
