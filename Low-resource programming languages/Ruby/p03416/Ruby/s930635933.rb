a,b = gets.strip.split.map(&:to_i)
cnt = 0 
for i in 1..9
  for k in 0..9
    for j in 0..9
      s = (i*(10**4)+k*(10**3)+j*(10**2)+k*10+j).to_i
      if s>=a && s<=b
        cnt += 1
      end
    end
  end
end
puts cnt