x = gets.to_i

found = false
-120.upto(120) do |a|
  break if found

  -120.upto(120) do |b|
    if a ** 5 - b ** 5 == x
      puts [a, b].join(" ")
      found = true
      break
    end
  end
end
