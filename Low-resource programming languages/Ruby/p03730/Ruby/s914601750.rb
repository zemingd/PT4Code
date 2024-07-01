

a,b,c=gets.split.map(&:to_i)
for i in 0..b-1
  r=a*i%b
  if r==c
    puts "YES"
    f=1
  end
end


if f!=1
  puts "NO"
end

