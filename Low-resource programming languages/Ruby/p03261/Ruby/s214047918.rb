n = gets.to_i
w = n.times.map{gets.chomp}

if w.uniq.size != w.size
  puts 'No'
  exit
end

(n-1).times do |i|
  if w[i][-1] != w[i+1][0]
    puts 'No'
    exit
  end
end

puts 'Yes'