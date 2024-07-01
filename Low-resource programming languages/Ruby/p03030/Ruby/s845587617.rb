N = gets.to_i
R = N.times.map{gets.split}

R.map! do |r|
  r[1] = r[1].to_i
  r
end

temp = R.sort_by{|r| r[0]}
temp = temp.group_by{|r| r[0]}

temp.map do |k,v|
  v.sort_by! { |r| r[1] }.to_a.reverse!
end

temp.each do |k,v|
  v.each do |r|
    puts R.index { |t| t[1] == r[1] } + 1
  end
end


