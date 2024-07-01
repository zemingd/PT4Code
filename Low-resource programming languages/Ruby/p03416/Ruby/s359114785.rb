input = gets.chomp.split.map(&:to_i)

betwen = input[1] - input[0]
count = 0
hako = []
(betwen+1).times do |i|
    sum = input[0] + i
    hako = sum.to_s.split(//)
    if hako == hako.reverse
        count += 1
    end
end

p count