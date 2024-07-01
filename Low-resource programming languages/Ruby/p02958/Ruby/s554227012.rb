n = gets.chomp.to_i
arr = gets.chomp.split(" ").map(&:to_i)

sorted_arr = arr.sort_by { |item| item }

0.upto(n - 1) do |i|
    i.upto(n - 1) do |j|
        tmp_arr = arr.dup
        tmp_arr[i], tmp_arr[j] = tmp_arr[j], tmp_arr[i]
        if tmp_arr == sorted_arr
            puts "YES"
            exit
        end
    end
end

puts "NO"