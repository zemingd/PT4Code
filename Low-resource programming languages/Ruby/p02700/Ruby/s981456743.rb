a, b, c, d = gets().chomp.split("\s").map{|x| x.to_i}

cnt = 0
while(a > 0 && c > 0)
  cnt += 1
  if cnt.odd?
    c = c - b
  else
    a = a - d
  end
end

puts a > 0 ? 'Yes' : 'No'