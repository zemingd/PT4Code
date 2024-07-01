num, dim = gets.chomp.split(" ").map{|s| s.to_i}

axs_arr = []
num.times do
  axs_arr << gets.chomp.split(" ").map{|s| s.to_i}
end

count = 0
axs_arr.each_with_index do |axs, i|
  axs_arr[(i+1)..-1].each do |axs_add|
    sum = 0
    dim.times do |i|
      sum += (axs[i] - axs_add[i]) ** 2
    end
    count += 1 if Math.sqrt(sum) % 1 == 0.0
  end
end

p count