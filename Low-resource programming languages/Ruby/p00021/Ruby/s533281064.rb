N = gets.to_i
N.times do
  data = gets.split.map(&:to_f)

  denominator_a = (data[2]-data[0])
  denominator_b = (data[6]-data[4])
                 
  if denominator_a == 0.0
    a = 0.0
  else
    a = (data[3]-data[1])/denominator_a
  end
  if denominator_b == 0.0
    b = 0.0
  else
    b = (data[7]-data[5])/denominator_b
  end
  if sprintf("%#.05g", a) ==  sprintf("%#.05g", b)
    puts "YES"
  else
    puts "NO"
  end
end