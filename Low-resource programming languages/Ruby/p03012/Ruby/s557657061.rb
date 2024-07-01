class Array
    def sum
        if self.empty?
            0
        else
            self.inject(:+)
        end
    end
end

n = gets.to_i
w_list = gets.split.map(&:to_i)
num_list = (1..n).to_a
answer_list = []
(1..(n-1)).each do |t|
  less_list = []
  great_list = []

  num_list.zip(w_list).each do |num, w|
    if num <= t
      less_list << w
    else
      great_list << w
    end
  end
  
  answer_list << (less_list.sum - great_list.sum).abs
end

puts answer_list.min