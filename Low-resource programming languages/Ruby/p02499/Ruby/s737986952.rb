input=""
while line=gets
line.chomp!
input+=line
end
input.split!("")
count=Array.new(26,0)
count.map(&:to_i)
a= ('A'..'z').to_a
a.slice!(26,6)
input.length.times do |i|
26.times do|k|
if input[i]==a[k] || input[i]==a[k+26]
count[k]+=1
end
end
end
26.times do |k|
puts "#{a[k+26]}:#{count[k]}"
end