n = gets.chomp.to_i
x = gets.chomp.split(" ").map(&:to_i)
a = x.sort
center = a[n/2]
center_post = a[n/2-1]

x.each do |i|
    if i < center
        puts center
    else
        puts center_post
    end
end