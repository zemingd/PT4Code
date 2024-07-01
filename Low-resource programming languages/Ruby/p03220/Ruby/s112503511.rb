n = gets.to_i
t, a = gets.split.map(&:to_i)
list = gets.split.map(&:to_i)
ans = tmp = 0
dis = 100000

list.each_with_index do |h, i|
    tmp = t - h*0.006
    if (a-tmp).abs < dis
        ans = i+1
        dis = (a-tmp).abs
    end
end

puts ans