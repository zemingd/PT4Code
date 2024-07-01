loop do
n = gets.chomp.to_i
cnt = 0
a = 0
b = 0
c = 0
d = 0
for a in (0..9)
  for b in (0..9)
    for c in (0..9)
      for d in (0..9)
	  if a+b+c+d == n
	  cnt += 1
	  end
	  end 
    end
  end
end 
puts cnt
end