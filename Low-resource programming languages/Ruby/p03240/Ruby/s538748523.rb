N = gets.chomp.to_i
multiple_array, zero_array = N.times.map { gets.split.map(&:to_i) }.partition { |array| array[2] != 0 }
ans_array = Array.new
ans = nil
(0..100).to_a.repeated_permutation(2) do |cx, cy|
  ch = nil
  is_ans = multiple_array.all? do |array|
    h = (cx - array[0]).abs + (cy - array[1]).abs + array[2]
    ch ||= h
    ch == h
  end
  ans_array.push([cx, cy, ch]) if is_ans
end

ans_array.each do |ans_candidate|
  ans = ans_candidate if zero_array.all? { |array| ans_candidate[2] <= array[2] } 
end

puts ans.join(" ")
