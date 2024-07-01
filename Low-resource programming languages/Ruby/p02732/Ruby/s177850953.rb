n = gets.to_i
a = gets.chomp.split
n.times do |i|
    a[i] = a[i].to_i
end

a_uniq = a.uniq
n_count = Array.new(200001, 0)
n_count_sum = Array.new(200001, 0)
n_count_sum_all = 0

a_uniq.each do |num|
    count = 0
    if a.count(num) > 1
        n_count[num] = a.count(num)
        (1..(a.count(num) - 1)).each do |i|
            count += i
        end
    end
    n_count_sum[num] = count
    n_count_sum_all += count
end

a.each do |num|
    if n_count[num] > 0
        if n_count[num] > 1
            puts n_count_sum_all - (n_count[num] - 1)
        else
            puts n_count_sum_all
        end
    else
        puts 0
    end
end