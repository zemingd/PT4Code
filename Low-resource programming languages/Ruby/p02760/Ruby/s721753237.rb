def answer(flag)
  if flag
    puts "Yes"
    exit
  end
end

a = []
3.times do
  a << gets.split.map(&:to_i)
end
n = gets.to_i
b = n.times.map { gets.to_i }
c = Array.new(3) { Array.new(3, false) }
b.each do |bi|
  3.times do |i|
    3.times do |j|
      if a[i][j] == bi
        c[i][j] = true
      end
    end
  end
end

flag = false
# naname
flag = (c[0][0] && c[1][1] && c[2][2])
answer(flag)
flag = (c[0][2] && c[1][1] && c[2][0])
answer(flag)

# yoko
3.times do |i|
  flag = c[i].all?
  answer(flag)
end

#tate
3.times do |i|
  flag = (c[0][i] && c[1][i] && c[2][i])
  answer(flag)
end
puts "No"
