N,Q = gets.chomp.split(" ").map(&:to_i)
S = gets.chomp.split("").map(&:to_s)

ac_count = []
count = 0
S.each_with_index do |str,i|
    if i == 0
        ac_count << 0
    else
        if S[i-1]+S[i] == "AC"
            count += 1
            ac_count << count
        else
            ac_count << count
        end
    end
end
p ac_count
Q.times do |i|
    begin_i,end_i = gets.chomp.split(" ").map(&:to_i)
    puts ac_count[end_i-1] - ac_count[begin_i-1]
end
