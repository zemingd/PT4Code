n=gets.split("")
answer=0

if n[0]==n[1] && n[1]==n[2]
    answer+=1
elsif  n[1]==n[2] &&  n[2]==n[3]
    answer+=1
end

if answer==0
    puts "No"

else puts "Yes"
end