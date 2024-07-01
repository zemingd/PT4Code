input = STDIN.readline.split()
n = input[0].to_i
k = input[1].to_i
a_list = STDIN.readline.split().map{|a|a.to_i}

max = (10**12).to_s(2)
masks = Range.new(0, max.size, true).to_a.map{|m|1 << m}.reverse
bit_counts = Array.new(max.size, 0)
for a in a_list do
    i = 0
    masks.each_index do |i|
        bit_and = masks[i] & a
        if bit_and > 0 then
            bit_counts[i] += 1
        end 
    end
end
bit_more = bit_counts.map do |c|
    if c * 2 > n then
        "0"
    else
        "1"
    end
end
sum_max = 0
k_2 = ("%0#{max.size}b" % k).split("")
result = []

k_2.each_index do |tmp|
    if k_2[tmp] == "0" then
        sum_max += bit_counts[tmp] * (2 ** (max.size - 1 - tmp))
    else
        sum_max += (n - bit_counts[tmp]) * (2 ** (max.size - 1 - tmp))
    end
end

k_2.each_index do |i|
    if k_2[i] == '1' then
        x = result + ["0"] + bit_more.slice(Range.new(i + 1, max.size, true))
        sum = 0
        x.each_index do |tmp|
            if x[tmp] == "0" then
                sum += bit_counts[tmp] * (2 ** (max.size - 1 - tmp))
            else
                sum += (n - bit_counts[tmp]) * (2 ** (max.size - 1 - tmp))
            end
        end
        if sum > sum_max then
            sum_max = sum
        end
    end
    result.push(k_2[i])
end
puts(sum_max)