def overflow?(a, b)
  if a.size > 80 || b.size > 80
    puts 'overflow'
    return false
  end

  if a.size == 80 && b.size == 80
    if [a, b].map(&:to_i).inject(:+) >= 10
      puts 'overflow'
      return false
    end
  end

  true
end

input = STDIN.read.split("\n").map(&:chomp)
input.shift.to_i.times do
  a = input.shift
  b = input.shift
  next unless overflow?(a, b)
  puts [a, b].map(&:to_i).inject(:+)
end