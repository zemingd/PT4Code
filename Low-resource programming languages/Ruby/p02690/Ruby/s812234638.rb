x = gets.to_i
a = 0
loop do
  a5 = a**5
  if a5 < x
    b5 = x - a5
    b = b5 ** (1.0/5)
    bf = b.floor
    bc = b.ceil
    if bf**5 == b5
      puts "#{a} #{-bf}"
      exit
    elsif bc**5 == b5
      puts "#{a} #{-bc}"
      exit
    end
  else
    b5 = a5 - x
    b = b5 ** (1.0/5)
    bf = b.floor
    bc = b.ceil
    if bf**5 == b5
      puts "#{a} #{bf}"
      exit
    elsif bc**5 == b5
      puts "#{a} #{bc}"
      exit
    end
  end
  a += 1
end

