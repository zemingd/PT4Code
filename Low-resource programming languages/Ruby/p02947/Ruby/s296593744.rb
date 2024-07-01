a=gets.chomp.to_i
b=[]
a.times do
  b<<gets.chomp.to_s
end

#puts b[0]
x=[]
a.times do |i|
  x[i] = b[i].chars.map(&:to_s).sort
end
z=[]
a.times do |i|
    a.times do |k|
      if i != k
        if (x[i] - x[k]) == []
          z << i
          break
        end
      end
    end
end
j = (z.size.to_i / 2).ceil
puts j == 0 ? "0" : j