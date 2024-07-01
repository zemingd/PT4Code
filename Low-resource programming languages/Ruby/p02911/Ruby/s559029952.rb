n, k, q = gets.chop.split.map(&:to_i)
a = []


q.times { a << gets.to_i}


# nums = [].fill(k, 0, n)

count = Hash.new(0)

a.each do |elem|
  count[elem] += 1
end



for i in 0..n-1 do

  if k - q + count[i+1] > 0
    puts "Yes"
  else
    puts "No"
  end

end
