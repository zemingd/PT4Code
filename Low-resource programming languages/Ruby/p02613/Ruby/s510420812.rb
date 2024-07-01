N=gets.to_i

h = Hash.new(0)
N.times do
    s = gets.chomp
    h[s] += 1
end

%w(AC WA TLE RE).each do |s|
    puts "#{s} x #{h[s]}"
end