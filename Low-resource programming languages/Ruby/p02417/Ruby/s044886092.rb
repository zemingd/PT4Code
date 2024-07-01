str = gets
for i in 97..122
puts "#{i.chr} : #{str.count(i.chr)}"
end
