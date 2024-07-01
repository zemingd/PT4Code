while line = gets
  a = line.split(' ').map{|s|Integer(s)}.reduce(1){|p,e|p*e}
  puts a % 2 === 0 ? 'Even' : 'Odd'
end
