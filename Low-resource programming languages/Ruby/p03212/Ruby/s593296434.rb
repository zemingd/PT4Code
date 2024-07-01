N = gets.chomp
keta = N.length
count = 0
for i in (3..keta) do
    ary = [3, 5, 7].repeated_combination(i).to_a
    ary.each do |a|
        count += 1 if a.include?(3) && a.include?(5) && a.include?(7)    
    end
end

puts count 