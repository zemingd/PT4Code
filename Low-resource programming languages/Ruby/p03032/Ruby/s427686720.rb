n, k = gets.chomp.split(" ").map(&:to_i)
v_arr = gets.chomp.split(" ").map(&:to_i)

max_value = 0
(0..k).each do |a|
  next if a > v_arr.length
  a_arr = a > 0 ? v_arr[0..(a-1)] : []
  (0..(k - a)).each do |b|
    next if b > v_arr.length - a
    b_arr = b > 0 ? v_arr[(b*(-1))..-1] : []
    arr = (a_arr + b_arr).sort
    cd = k - a - b
    index = arr.index{|x| x < 0}
    if index.nil? then
      value = arr.inject(0){|sum, i| sum + i }
    elsif cd - 1 > index then
      index -= 1 if arr[(index+1)].nil?
      value = arr[(index+1)..-1].inject(0){|sum, i| sum + i }
    else
      value = arr[cd..-1].inject(0){|sum, i| sum + i }
    end
    max_value = value if value > max_value
  end
end

puts max_value
