N = gets.chomp.to_i
D = gets.chomp.split.map(&:to_i)

D.sort!

# p D

def solve
  if (N % 2) == 1
    p 0
    return     
  end
  
  l = D[N/2-1]
  r = D[N/2]
  if r == l
    p 0
    return
  end
  
  p r - l
end
  
solve