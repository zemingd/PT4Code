N = gets.to_i
H = gets.split.map(&:to_i)

ans = 0
cnt = 0

H.each_with_index do |h, i|
    break if i == H.size - 1

    if H[i+1] <= h
        cnt += 1
        ans = cnt if cnt > ans
    else
        cnt = 0
    end
end

puts ans
