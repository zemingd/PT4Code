while true do
ar=STDIN.gets.split
m =ar[0].to_i
f =ar[1].to_i
r =ar[2].to_i

break if m==-1 && f==-1 && r==-1

grade = 
  if m==-1 || f==-1 then "F"
  elsif m + f >= 80 then "A"
  elsif m + f >= 65 then "B"
  elsif m + f >= 50 then "C"
  elsif (m + f >= 30) && (r >= 50) then "C"
  elsif (m + f >= 30) && (r <  50) then "D"
  elsif m + f < 30 then "F"
  end
puts grade
end