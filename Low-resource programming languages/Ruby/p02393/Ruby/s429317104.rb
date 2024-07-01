x = gets
y = x.split
z = []

if y[0].to_i <= y[1].to_i

  if y[0].to_i <= y[2].to_i
    z[0] = y[0]
    if y[1].to_i <= y[2].to_i
      z[1] = y[1]
      z[2] = y[2]
    else
      z[1] = y[2]
      z[2] = y[1]
    end
  end

elsif y[0].to_i <= y[2].to_i
  z[0] = y[1]
  z[1] = y[0]
  z[2] = y[2]
elsif y[1].to_i <= y[2].to_i
  z[0] = y[1]
  z[1] = y[2]
  z[2] = y[0]
else
  z[0] = y[2]
  z[1] = y[1]
  z[2] = y[0]
end

puts z[0].to_s + " " + z[1].to_s + " " + z[2].to_s

