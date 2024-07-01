N, L = gets.chomp.split(' ').map(&:to_i)
s = []
N.times do 
    s << gets.chomp.to_s
end
puts s.sort.join