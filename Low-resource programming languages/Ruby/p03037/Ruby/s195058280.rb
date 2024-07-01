N, M= gets.chomp.split.map(&:to_i)
arr = []
M.times do |i|
    a, b = gets.chomp.split(' ').map(&:to_i)
    if i == 0
        arr = [*(a..b)]
        next
    end
    arr = arr & [*(a..b)]
end
p arr.length