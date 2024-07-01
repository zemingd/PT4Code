N = gets.to_i
W = N.times.map{gets.chomp}
hash = Hash.new(0)
pre = W[0][0]
N.times do |i|
  if hash[W[i]] == 0
    hash[W[i]] = 1
    if W[i][0] == pre
      pre = W[i][-1]
    else
      puts "No"
      exit
    end
  else
    puts "No"
    exit
  end
end
puts "Yes"
