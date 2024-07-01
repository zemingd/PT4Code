N,M = gets.chomp.split.map(&:to_i)
attached_switchies_num = Array.new(M){gets.chomp.split(' ').map(&:to_i).drop(1).map{|num| num-1}}
ps = gets.chomp.split(' ').map(&:to_i)
cnt = 0
[0, 1].repeated_permutation(N) do |bits|
    denkyus = []
    M.times do |i|
        sum = attached_switchies_num[i].map{|num|
            bits[num]
        }.inject(:+)
        if sum % 2 == ps[i]
            denkyus.push(true)
        else
            denkyus.push(false)
            break
        end
    end
    if denkyus.all?{|denkyu| denkyu == true}
        cnt +=1
    end
end
p cnt