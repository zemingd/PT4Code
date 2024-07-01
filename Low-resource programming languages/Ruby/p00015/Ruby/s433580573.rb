def overflow?(n)
  if n.size > 80
    true
  else
    false
  end
end

input = STDIN.read.split("\n").map(&:chomp)
input.shift.to_i.times do
  a = input.shift
  b = input.shift

  if overflow?(a) || overflow?(b)
    puts 'overflow'
  else
    sum = [a, b].map(&:to_i).inject(:+)
    if overflow? sum
      puts 'overflow'
    else
      puts sum
    end
  end
end