n = gets.to_i
a = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
end

a_uniq = a.uniq
a_combis_sum = 0

def combi num
    return (num * (num - 1)) / 2
end

a_uniq.each do |num|
    count = a.count(num)
    case count
    when 0, 1
        next
    else
        a_combis_sum += combi(count)
    end
end

a.each do |num|
    puts a_combis_sum - (a.count(num) - 1)
end