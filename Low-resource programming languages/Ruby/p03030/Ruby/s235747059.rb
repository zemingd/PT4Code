n = gets.chomp.to_i
ary = []
n.times do |i|
    ary << [gets.chomp.split, i+1].flatten
end
    
ary.sort! {|a,b|
    if a[0] == b[0]
        b[1].to_i <=> a[1].to_i
    else
        a[0] <=> b[0]
    end
}
# p ary
ary.each do |item|
    puts item[2]
end
