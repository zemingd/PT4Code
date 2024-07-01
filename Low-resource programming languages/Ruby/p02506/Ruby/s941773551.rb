count=0
a=Array.new
while line =gets.downcase.split(/[" ",\n,'"','"',".","?"]/)
a.concat(line)
break if line.include?("end_of_text")
end
a.length.times do |i|
if i!=0 && a[i]==a[0]
count+=1
end
end

puts "#{count}"