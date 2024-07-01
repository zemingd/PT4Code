n=gets.chomp.to_i
s=gets.chomp.split("")
w,b=10**6,10**6
for i in 0..n-1
  if s[i]=="#"
    w=s.slice(i..n-1).count(".")
    b=s.slice(i..n-1).count("#")
    t=true
    break
  end
end

if w<=b && t
  puts w
elsif w>=b && t
  puts b
else
  puts 0
end