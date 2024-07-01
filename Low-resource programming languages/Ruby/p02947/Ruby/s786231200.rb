count = gets.to_i

strs = []

count.times.each do
  strs << gets
end

before = strs.length
after = strs.map(&:sort).uniq.length

puts before - after