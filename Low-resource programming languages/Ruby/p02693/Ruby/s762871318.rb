def main
  k = gets.chomp.to_i
  a,b = gets.chomp.split(/ /).map {|i| i.to_i}

  ma = a/k
  mb = b/k
  isok = false
  (ma .. mb).each {|i|
    n = i*k 
    if n >= a and n <= b
      isok = true
      break
    end
  }
  if isok
    puts "OK"
  else
    puts "NG"
  end

end


main
