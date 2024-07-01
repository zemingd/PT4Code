n,k,q = gets.chomp.split(' ').map(&:to_i)
arr = Array.new(n,k)
q.times do
  arr.map!{|i| i - 1}
  arr[gets.to_i - 1] += 1
end
arr.each do |part|
  if part > 0
    puts "Yes"
  else
    puts "No"
  end
end