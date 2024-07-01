s = gets.chomp.to_s.split(//)
q = gets.to_i
ary = []
q.times do
  ary << gets.split(' ')
end

num = 0
flag = true

ary.each do |x|
  if x[0] == "1"
    num += 1
    flag = !flag
  elsif x[0] == "2"
    if flag
      if x[1] == "1"
        s.unshift(x[2])
      elsif x[1] == "2"
        s.push(x[2])
      end
    else
      if x[1] == "1"
        s.push(x[2])
      elsif x[1] == "2"
        s.unshift(x[2])
      end
    end
  end
end

if num.odd?
  s = s.reverse
end

puts s.join
