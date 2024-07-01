while a,op,b=gets.split
  break if op=='?'
  puts eval "#{a.to_i}#{op}#{b.to_i}"
end