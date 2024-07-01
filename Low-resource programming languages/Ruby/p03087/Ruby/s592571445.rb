n,q = gets.split(' ').map(&:to_i)
s = gets.chomp
q.times do |a|
    l,r = gets.split(' ').map(&:to_i)
    str = s[(l-1)..(r-1)]
    puts str.scan('AC').length
end