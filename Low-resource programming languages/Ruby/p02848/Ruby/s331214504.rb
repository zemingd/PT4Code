N = gets.chomp.to_i
S = gets.chomp.split("")

S.map! do |s|
    N.times do
        s = s.succ
    end
    s
end

puts S.join

