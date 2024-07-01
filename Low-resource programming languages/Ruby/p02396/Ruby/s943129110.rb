def f(i)
  if (x = gets.to_i) !=0
    puts "Case #{i}: #{x}"
    f(i+1)
  end
end

i = 1
f(i)
