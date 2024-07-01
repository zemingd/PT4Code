n,m=gets.chomp.split(" ").map(&:to_i)
a_array=gets.chomp.split(" ").map(&:to_f).sort { |a, b| b <=> a }

if n == 1
    puts (a_array[0] / (2 ** m)).to_i
    exit
end
m.times do
    max_value = a_array.shift
    new_value = max_value / 2
    next if n == 1
    index = a_array.bsearch_index { |e| e <= new_value }
    if index == nil
        a_array.unshift(new_value)
    else
        a_array.insert(index, new_value)
    end
end
puts a_array.map(&:to_i).inject(:+)


