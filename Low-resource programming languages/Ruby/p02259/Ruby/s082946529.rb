class Array
  def bubble_sort
    data = self
    n = data.size
    cnt = 0
    0.upto(n - 2) do |i|
      (n - 1).downto(i + 1) do |j|
        if data[j] < data[j - 1]
          tmp = data[j - 1]
          data[j - 1] = data[j]
          data[j] = tmp
          cnt += 1
        end
      end
    end
    return [data,  cnt]
  end
end

n = gets.to_i
nums = gets.chomp.split(" ").map(&:to_i)
sorted_nums, cnt = nums.bubble_sort
puts "#{sorted_nums.join(" ")}\n#{cnt}"