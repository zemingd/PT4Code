a = gets.chomp.split(" ").map(&:to_i).sort
(a.length-1).times do |i|
        printf("%d ",a[i]);
end
puts a[a.length-1]