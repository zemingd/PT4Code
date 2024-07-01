a, b, c, d, e, f = gets.chomp.split(' ').map(&:to_i)
max = 0
a *= 100
b *= 100
result = [0, 0]
for i in 0..(f/a)
  for j in 0..(f-a*i)/b
    w = (a*i+b*j).to_f
    for k in 0..(f-w)/c
      for l in 0..(f-w-c*k)/d
        s = (c*k+d*l).to_f
        next if s > e*(w/100)
        con = s/(s+w)
        next if con.nan?
        if max < con
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
