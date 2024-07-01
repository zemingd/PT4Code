input = STDIN.readline.split()
n = input[0].to_i
k = input[1].to_i
a_list = STDIN.readline.split().map{|a|a.to_i}

max = (10**12).to_s(2)
bit_counts = Array.new(max.size, 0)
for a in a_list do
    i = 0
    a.to_s(2).split("").reverse.each do |ch|
        bit_counts[i] += ch.to_i
        i += 1
    end
end
bits_result = Array.new(max.size)
bit_counts.each_index do |idx|
    zero_counts = n - bit_counts[idx]
    bits_result[idx] = {}
    bits_result[idx]["0"] = (2 ** idx) * bit_counts[idx]
    bits_result[idx]["1"] = (2 ** idx) * zero_counts
end
max = 0
for x in Range.new(0, k) do
    sum = 0
    x_r = x.to_s(2).split("").reverse
    bits_result.each_index do |idx|
        if x_r.size > idx && x_r[idx] == "1" then
            sum += bits_result[idx]["1"]
        else
            sum += bits_result[idx]["0"]
        end
    end
    if max < sum then
        max = sum
    end
end
puts(max)
