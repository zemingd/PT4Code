n,m=gets.chomp.split(" ").map(&:to_i)
a_array=gets.chomp.split(" ").map(&:to_f).sort { |a, b| b <=> a }

log_array = a_array.map {|e| Math.log2(e) }

if n == 1
    puts (a_array[0] / (2 ** m)).to_i
    exit
end
count = 0
while count < m do
    a_array[0] = a_array[0] / 2.0
    count += 1
    index = 1
    # print a_array
    # puts
    while a_array[index-1] < a_array[index] && count < m do
        a_array[index] = a_array[index] / 2
        index += 1
        count += 1
        # print a_array
        # puts
    end
end
puts a_array.map(&:to_i).inject(:+)


