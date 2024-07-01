S = gets.chomp.chars
ans = 0

arr = %W(A T G C)

S.each_with_index do |s, i|
    next unless arr.include?(s)

    cnt = 1

    S[(i+1)..(-1)].each do |t|
        break unless arr.include?(t)

        cnt += 1
    end

    if cnt >= ans
        ans = cnt
    end
end

puts ans