top = gets.split("")
count = 0
top.length.times {|i|
  if top[i] == "o"
    count += 1
  end  
}
ans = 700 + count*100
puts ans