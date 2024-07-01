N = gets.chomp.to_i
ab = []
N.times do
    ab << gets.chomp.split(" ").map(&:to_i)
end
ab.sort_by!{|a, b| a}.sort_by!{|a, b| b}
t = 0
ab.each do |a, b|
    if t + a > b
        puts "No"
        exit
    else
        t += a
    end
end
puts "Yes"