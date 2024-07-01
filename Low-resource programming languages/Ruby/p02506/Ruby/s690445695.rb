count=0
a=Array.new
n=gets.chomp.downcase
while line =gets.downcase.split(/[" ",\n]/)
a.concat(line)
break if line.include?("end_of_text")
end
a.length.times do |i|
break if a[i]==("end_of_text")
if a[i]==n
count+=1
end
end
puts "#{count}"