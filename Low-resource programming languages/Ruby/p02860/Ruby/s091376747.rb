N = gets.to_i
S = gets
if N % 2 != 0
  puts "No"
  exit
end
n = N / 2
a = S.scan(/.{1,#{n}}/)
if a.length == 2
  if a[0] == a[1]
    puts "Yes"
  else
    puts "No"
  end
else
  puts "No"
end