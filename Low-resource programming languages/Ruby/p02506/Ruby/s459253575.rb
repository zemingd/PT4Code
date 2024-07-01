w=gets
w = w.upcase
count = 0
while true
    t = gets
    t=t.upcase
    t=t.split(" ")
    t.length.times do |i|
     puts t[i]
    if t =~ /END_OF_TEXT/
      break
    end
    if t[i] =~ /#{w}/
       count += 1
    end
    end
end

puts count