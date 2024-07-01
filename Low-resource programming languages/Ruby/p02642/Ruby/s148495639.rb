n = gets.to_i
arr = gets.to_s.split.map(&:to_i).sort

p_arr = []
dup = {}
arr.each do |num|
  flag = true
  p_arr.each do |m|
    if m == num
      dup[num] ||= true
      flag = false
      break
    elsif num % m == 0
      flag = false
      break
    end
  end
  p_arr << num if flag
end

puts p_arr.length - dup.keys.length
      

