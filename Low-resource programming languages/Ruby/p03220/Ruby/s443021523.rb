N = gets.to_i
T, A = gets.split.map(&:to_i)
ary = gets.split.map(&:to_i)
min_diff = 1000
min_place = 0
ary.each_with_index do |h, i|
    avg = T - h * 0.006
    diff = (A - avg).abs
    if diff < min_diff
        min_diff = diff
        min_place = i + 1
    end
end
puts min_place