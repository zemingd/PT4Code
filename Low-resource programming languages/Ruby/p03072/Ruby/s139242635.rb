N = gets.to_i
H = gets.chomp.split(' ').map{|x| x.to_i}

ans = 0
for i in 0..N-1 do
  ans+=1 if H[0, i+1].max == H[i]
  
end

p ans
