N = gets.to_i
T, A = gets.split.map(&:to_i)
H = gets.split.map(&:to_i).map{|v| T - v * 0.006}
min = 1e6
ans = 0
H.length.times{|i|
    val = (A - H[i]).abs
    if val < min then
        min = val
        ans = i + 1
    end
}
puts ans
