s = gets.chomp
q = gets.to_i
f = false

as = []
q.times do |i|
  a = gets.chomp.split
  if a[0] == '1'
    f = !f
  else
    if a[1] == '1'
      if f
        s += a[2]
      else
        s = a[2] + s
      end
    else
      if f
        s = a[2] + s
      else
        s += a[2]
      end
    end
  end
end

s.reverse! if f
puts s
