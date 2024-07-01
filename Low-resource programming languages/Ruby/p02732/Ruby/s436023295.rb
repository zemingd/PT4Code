n = gets.to_i
a = gets.chomp.split

a_uniq = a.uniq
a_each_count = Array.new(n+1, 0)
a_combis_sum = 0

def combi num
    return (num * (num - 1)) / 2
end

a_uniq.each do |num|
    count = a.count(num)
    a_each_count[num.to_i] = count
    case count
    when 0, 1
        next
    else
        a_combis_sum += combi(count)
    end
end

a.each do |num|
    puts a_combis_sum - (a_each_count[num.to_i] - 1)
end