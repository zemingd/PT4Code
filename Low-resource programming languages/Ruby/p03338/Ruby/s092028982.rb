require 'set'
n = gets.chomp.to_i
s = gets.chomp.split('')
s1 = Set.new
s2 = Set.new
max = 0
(n - 1).times do |i|
        0.upto(i) do |j|
                s1.add(s[j])
        end
        (i + 1).upto(n - 1) do |j|
                s2.add(s[j])
        end
        num = 0
        s1.each do |j|
                if s2.include?(j) then num += 1 end
        end
        max = (num > max) ? num : max
        s1.clear
        s2.clear
end
puts max
