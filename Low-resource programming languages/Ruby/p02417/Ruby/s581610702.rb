
str = ""
while add = gets.chomp
str += add
end


for i in 97..122
puts "#{i.chr} : #{str.scan(/[#{i.chr}#{(i-32).chr}]/).size}"
end

