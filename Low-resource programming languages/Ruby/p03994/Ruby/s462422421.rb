def conv(s)
  s.chars.map{ |c| c.ord - ?a.ord }
end

def solve(s,k)
  a = conv(s)
  n = a.size
 
  (n-1).times do |i|
    next if a[i] + k < 26
    next if a[i] == 0
    
    k -= 26 - a[i]
    a[i] = 0
    p [i,k]
  end  

  a[-1] = (a[-1] + k) % 26
  
  return a.map{ |c| (c + ?a.ord).chr }.join
end  

def main
  s = gets.chomp
  k = gets.to_i
  puts solve(s,k)
end

main