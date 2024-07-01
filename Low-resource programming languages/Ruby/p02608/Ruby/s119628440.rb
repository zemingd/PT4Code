n = gets.to_i
arr = Array.new(n+1, 0)

  for i in 1..100
    for j in 1..100
      for k in 1..100
        sum = i**2 + j**2 + k**2 + i*j + j*k + k*i 
        if sum > n  
          break
        else
          arr[sum] += 1
        end
      end
    end
  end

p arr[1,n]

