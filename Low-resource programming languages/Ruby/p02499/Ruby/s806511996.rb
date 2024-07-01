str = ""
while line = gets
    str += line.downcase
end
"abcdefghijklmnopqrstuvwxyz".split("").each do |c|
    puts "#{c} : #{str.count(c)}"
end