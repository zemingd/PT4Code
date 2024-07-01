n=gets.to_i
ac=0
wa=0
tle=0
re=0
n.times.each do
    v=gets.chomp.to_s
    if v=="AC"
        ac+=1
    elsif v=="TLE"
        tle+=1
    elsif v=="WA"
     wa+=1
     else
     re+=1
     end
end


puts "AC x #{ac}"
puts "WA x #{wa}"
puts "TLE x #{tle}"
puts "RE x #{re}"