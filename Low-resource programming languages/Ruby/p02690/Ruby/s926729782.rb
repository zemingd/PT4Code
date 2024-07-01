x=gets.to_i
flag = 0
for a in -200..200
  break if flag==1
  for b in -200..200
    if (a**5 - b**5) == x
      puts "#{a} #{b}"
      flag = 1
      break
    end
  end
end
