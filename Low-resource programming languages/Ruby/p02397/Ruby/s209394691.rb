while num=gets.split
  break if num==["0", "0"]
  puts num.sort*' '
end