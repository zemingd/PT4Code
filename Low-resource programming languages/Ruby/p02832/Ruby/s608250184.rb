gets
bricks = gets.chomp.split(' ').map(&:to_i)
sort_ary = []
count=1
bricks.each do |b|
    if b==count
        sort_ary << b
        count +=1
    end
end
puts sort_ary.size>0 ? bricks.size-count+1 : -1
