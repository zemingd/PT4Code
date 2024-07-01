S = gets.to_s
N = S.size

if N > 2 then
  a = S.slice(0..(N-3)/2)
  b = S.slice((N+1)/2..N-1)
  if a == a.reverse && a == b then
    puts "Yes"
  else
    puts "No"
  end
else
  puts "Yes"
end