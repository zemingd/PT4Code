s = gets.chomp.split("")
arr = []
arr << s
arr = arr.flatten
#p arr
q = gets.chomp.to_i
key = "a"
q.times do |i|
    qq = gets.chomp.split(" ")
    #p qq[0]
    if qq[0] == "1"
        #arr = arr.reverse
        if key == "a"
            key = "b"
        elsif key == "b"
            key = "a"
        end
    elsif qq[0] == "2"
        if qq[1] == "1" && key == "a"
            arr.unshift(qq[2])
            #p arr
            #arr = arr.join("")
        elsif qq[1] == "2" && key == "a"
            arr << qq[2]
            #p arr
            #arr = arr.join("")
        elsif qq[1] == "1" && key == "b"
            arr << qq[2]
            #arr = arr.join("")
        elsif qq[1] == "2" && key == "b"
            arr.unshift(qq[2])
            #arr = arr.join("")
        end
    end
    #p arr
end
#p arr
if key == "a"
puts arr.join("")
elsif key == "b"
puts arr.reverse.join("")
end