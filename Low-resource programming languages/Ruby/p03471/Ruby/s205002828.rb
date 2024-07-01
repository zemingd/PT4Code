A = 100
B = 50
C = 10
n, m = gets.chomp.split(" ").map(&:to_i)
m = m/100
fin = 0
res = []

if (A * n < m) then
  puts "-1 -1 -1"
else
  for a in 0..n do
    for b in 0..(n-a) do
      if (n-a-b)*A + b*B + a*C == m then
        res = [a, b, n-a-b]
	      fin = 1
      end
      if fin == 1
        break
      end
    end
    if fin == 1
      break
    end
  end

  if fin == 0 then
    puts "-1 -1 -1"
  else
    puts res.join(" ")
  end
end
