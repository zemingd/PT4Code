n,k,q = gets.chomp.split(" ").map(&:to_i)
a_arr = q.times.map{gets.to_i}

hash = {}
a_arr.each do |a|
  hash[a] ||= 0
  hash[a] += 1
end

(1..n).each do |i|
  if k - q + hash[i].to_i > 0 then
    puts "Yes"
  else
    puts "No"
  end
end
