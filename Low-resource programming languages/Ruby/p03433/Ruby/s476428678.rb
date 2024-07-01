N = gets.to_i
A = gets.to_i

amari = N % 500
if amari==0 then
  puts "Yes"
else
  if amari <= A then
    puts "Yes"
  else
    puts "No"
  end
end
