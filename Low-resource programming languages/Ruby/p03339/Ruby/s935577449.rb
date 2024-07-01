N = gets.to_i
S = gets.chomp
pivot = N.div(2)
pivot_west_cnt = S[0..pivot].count('W')
pivot_east_cnt = S[pivot..N-1].count('E')
cnt = N
cnt_west = pivot_west_cnt
cnt_east = pivot_east_cnt
pivot.downto(0) do |n|
    # 真ん中から西側への処理
    if S[n] == 'W'
        cnt_west -= 1
    else
        cnt_east += 1
    end
    cnt = [cnt, cnt_west + cnt_east].min
end
cnt_west = pivot_west_cnt
cnt_east = pivot_east_cnt
pivot.upto(N-1) do |n|
    # 真ん中から東側への処理
    if S[n] == 'W'
        cnt_west += 1
    else
        cnt_east -= 1
    end
    cnt = [cnt, cnt_west + cnt_east].min
end
puts cnt