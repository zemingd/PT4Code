def Cal(val)
  Math.log10(val).to_i+1
end
n=gets.to_i
min=9*10**9
for i in 1..(n**0.5)
  if (n%i).zero?
    val1=Cal(i)
    val2=Cal(n/i)
    val=(val1>val2) ? val1 : val2
    if val<min
      min=val
    end
  end
end
puts min
