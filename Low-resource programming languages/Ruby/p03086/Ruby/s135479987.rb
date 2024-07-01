S = gets.chomp!

temp = S.gsub(/[AGCT]/, "1")
temp = temp.gsub(/[^1]/, "-")
list = temp.split("-")
output = "0"
list.each do |i|
    if i.empty? then
        next
    end
    if output.to_i < i.to_i then
        output = i
    end
end
puts output.count("1")
