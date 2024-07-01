a,ap,b,bp=gets.chomp.split(' ').map(&:to_i)
switch = true #高橋
while true
  if a==0
    switch = false
    break
  elsif b==0
    break
  end
  a -= bp
  b -= ap
end
if switch
  puts "Yes"
else
  puts "No"
end