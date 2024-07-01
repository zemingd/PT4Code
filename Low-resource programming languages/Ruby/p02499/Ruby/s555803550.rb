keyAry = ("a".."z").to_a
keyVal = Array.new(26,0)
while input = gets
        input.downcase!
        ("a".."z").each_with_index {|target,idx|
                keyVal[idx] += input.count(target)
        }
end
(0...26).each do |i|
        puts "#{keyAry[i]} : #{keyVal[i]}"
end