
n = gets.strip.to_i
a = gets.strip.split(' ').map(&:to_i)

sticks = {}
a.map do |stick|
  if sticks[stick]
    sticks[stick] += 1
  else
    sticks[stick] = 1
  end
end

# puts sticks
# puts a.uniq.sort.reverse

found = 0
a.uniq.sort.reverse.each do |current|
  count = sticks[current]
  if count == 4
    # puts "current has more 4"
    puts current * current
    exit 0
  elsif count == 2 or count == 3
    # puts "current has 2"
    if found > 0
      # puts "found * current: #{found} * #{current}"
      puts found * current
      exit 0
    else
      # puts "found will be #{current}"
      found = current
    end
  end
end

puts 0
