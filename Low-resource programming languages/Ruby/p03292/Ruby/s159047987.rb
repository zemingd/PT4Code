tasks = gets.split(' ').map!{|x| x.to_i}


result = nil
3.times do |i|
  3.times do |j|
    3.times do |k|
      if i!=j && i!=k && j!=k
        sum = (tasks[k]-tasks[i]).abs + (tasks[j]-tasks[i]).abs
        if result.nil? || result > sum
          result = sum
        end
      end
    end
  end
end

puts result
