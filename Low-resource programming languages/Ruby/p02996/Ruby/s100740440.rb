N,*ls=$<.read.split.map(&:to_i)
arr = ls.each_slice(2).sort_by {|a,b| b}

t = 0
arr.each do |a,b|
  t += a
  if b < t
    puts 'No'
    exit 0
  end
end

puts 'Yes'
