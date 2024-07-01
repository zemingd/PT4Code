x = gets.to_i

400.times{|a|
  aa = a-200
  a5 = aa**5
  400.times{|b|
    bb = b-200
    b5 = bb**5
    if(a5 - b5 == x) then
      puts("#{aa} #{bb}")
      exit(0)
    end
  }
}

