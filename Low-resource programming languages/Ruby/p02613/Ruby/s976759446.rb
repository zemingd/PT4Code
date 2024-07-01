test_case = gets.chomp.to_i
result_list_s = ["AC","WA","TLE","RE"]
result_list = []

loop {
  if test_case == 0
    break
  end
  result_list.push(gets.chomp)
  test_case -= 1
}

result_list_h = result_list.group_by(&:itself).map{ |k, v| [k, v.size] }.to_h

result_list_s.each do |i|
  if result_list_h["#{i}"].nil?
    puts "#{i} x 0"
  else
    puts "#{i} x #{result_list_h["#{i}"]}"
  end
end