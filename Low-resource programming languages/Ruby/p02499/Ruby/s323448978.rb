input=""
loop{
str=gets
input+=str
break if str.end_with?(".")
}
input.split("")
count=Array.new(26,0)
count.map(&:to_i)
a= ('A'..'z').to_a
input.length.times do |i|
26.times do|k|
if input[i]==a[k] || input[i]==a[k+32]
count[k]+=1
end
end
end
26.times do |k|
puts "#{a[k+32]} : #{count[k]}"
end