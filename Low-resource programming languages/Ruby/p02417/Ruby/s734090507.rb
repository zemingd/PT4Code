
str = ""
while add = gets
add = gets.chomp
if add != "" then
str += add
end
end


for i in 97..122
puts "#{i.chr} : #{str.scan(/[#{i.chr}#{(i-32).chr}]/).size}"
end


