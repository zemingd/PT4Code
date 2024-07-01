class AOJ1
  def digitNumber first,second
    n = first + second
    digit = n.to_s.length
    return digit
  end
end


while g = gets  do
  line = g.chomp.split(" ")
  first = line[0].to_i
  second = line[1].to_i
  
  aoj = AOJ1.new
  puts aoj.digitNumber first,second
end