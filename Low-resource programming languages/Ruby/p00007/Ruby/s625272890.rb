def r(i,n)
    i = ((i + i*0.05) / 1000).ceil * 1000
    i = r(i,n-1) if n > 1
    return i
end

puts r(100000, gets.to_i)