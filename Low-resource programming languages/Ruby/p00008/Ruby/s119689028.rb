STDIN.each_line {|l| 
    n = l.to_i
    cnt = 0
    (0..9).to_a.repeated_permutation(4).each do |ar|
        sum = ar.inject {|sum, n| sum + n }
        cnt += 1 if sum == n
    end
    p cnt
}