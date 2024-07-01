N = gets.to_i
As = Array.new(N)
N.times do |i|
  As[i] = gets.split.map(&:to_i)
end
As.sort_by!{|k,v| v}
sum = 0
ans = "Yes"
As.each{|k,v|
  sum += k
  if sum > v
    ans = "No"
    break;
  end
}

puts ans
