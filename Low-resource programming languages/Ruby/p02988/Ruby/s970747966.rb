n = gets.chomp.to_i
ary = gets.chomp.split(" ").map(&:to_i)

# puts "#{ary}"
cnt = 0

(1..n-2).each do |a|
    ary2 = []
    ary2 << ary[a-1] << ary[a] << ary[a+1] 
    # puts "#{ary2}"
    # puts "#{ary2.sort[1]}"
    # puts "#{a}"

    if ary[a] == ary2.sort[1]
        cnt += 1 
    end
end
puts cnt
