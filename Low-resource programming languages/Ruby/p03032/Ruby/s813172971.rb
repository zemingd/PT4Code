n, k = gets.split.map(&:to_i)
v = gets.split.map(&:to_i)

max_array = []
have_array = []

return_count_max = k / 2
(0..return_count_max).each do |return_count|
  have_count = k - return_count
  (0..have_count).each do |left_count|
    have_array = []
    right_count = have_count - left_count

    unless right_count == 0
      have_array += v.slice(n-right_count..n-1)
    end

    unless left_count == 0
      have_array += v.slice(0..left_count-1)
    end


    have_array.sort!

    unless return_count == 0
      have_array.slice!(0..return_count - 1)
    end
    unless have_array.size == 0
      max_array << have_array.inject(:+)
    end
  end
end


ans = max_array.max
if ans <= 0
  puts 0
else
  puts ans
end