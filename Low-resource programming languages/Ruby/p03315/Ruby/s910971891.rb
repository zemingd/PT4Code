s=gets.chomp.split("")

a=0
s.each do |i|
    i=="+" ? a+=1:a-=1
end

puts s