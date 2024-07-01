a,b=gets.split.map(&:to_s)
ab=(a+b).to_i
ans=(ab**0.5).to_i
if ans**2==ab
    puts "Yes"
else
    puts "No"
end
