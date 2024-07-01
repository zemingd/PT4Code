n = gets.to_i
count = 0
3.upto(n.to_s.size) do |i|
  added_num_array = [3,5,7].repeated_combination(i-3).to_a
  added_num_array.map { |added_num|
    use_num = [3,5,7] + added_num
    use_num.permutation(i).to_a.uniq.map{ |a|
      sgs = a.join.to_i
      if sgs <= n
        count += 1
      end
     }
  }
end
puts count
