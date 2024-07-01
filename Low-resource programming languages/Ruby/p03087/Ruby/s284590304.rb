N, Q = gets.split.map(&:to_i)
S = gets.chomp!.split("")
LR = Array.new
Q.times do 
    LR << gets.split.map(&:to_i)
end
ans = 0
0.upto(Q - 1) do
    lr = LR.shift
    s_index = lr[0] - 1
    e_index = lr[1] - 1
    part_string = S[s_index..e_index]
    0.upto(part_string.length - 1) do |i|
        part_string[i] == 'A'
        if part_string[i+1] == 'C'
            ans += 1
        end
    end
    puts ans
    ans = 0
end