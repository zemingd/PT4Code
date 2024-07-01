loop do
    m, f, r = gets.chomp.split.map(&:to_i)
    # 範囲オブジェクト使えばいい
    break if [m, f, r].all?{ |i| i < 0}
    s = m + f
    ans = [m, f].any?{ |i| i<0 } || s < 30 ? "F" : ((30...50).include?(s) and r < 50 ? "D" : ((50...65).include?(s) || ((30...50).include?(s) && r>=50) ? "C" : ((65...80).include?(s) ? "B" : "A")))
    puts ans
end
