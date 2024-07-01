a, b, c, d, e, f = gets.chomp.split(' ').map(&:to_f)
max = 0
limit = e/(100+e)
a *= 100
b *= 100
result = [0, 0]
for i in 0..(f/a)
  for j in 0..(f-a*i)/b
    w = (a*i+b*j).to_f
    for k in 0..(f-w)/c
      for l in 0..(f-w-c*k)/d
        next if i+j==0 || k+l==0
        s = (c*k+d*l).to_f
        con = s/(s+w)
        next if limit < con
        if max <= con
          max = con
          result[0] = s+w
          result[1] = s
        end
      end
    end
  end
end

result.map!(&:to_i)
puts "#{result[0]} #{result[1]}"
