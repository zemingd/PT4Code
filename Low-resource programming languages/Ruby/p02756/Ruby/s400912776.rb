a = gets.chomp
ary = []
ary << a
q = gets.to_i
q.times do
  x = gets.split()
  if x[0] == "1"
    ary = ary.reverse
  elsif x[0] == "2"
    if x[1] == "1"
      ary.unshift(x[2])
    elsif x[1] == "2"
      ary.push(x[2])
    end
  end
end
puts ary.join