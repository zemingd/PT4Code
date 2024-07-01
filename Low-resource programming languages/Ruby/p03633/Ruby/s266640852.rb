    n = gets.to_i
     
    arr = Array.new()
     
    for i in 0..n-1 do
        arr.push(gets.to_i)
    end
     
    ans = 1
    arr.map{|i| ans = ans.lcm(i)}
    puts(ans)