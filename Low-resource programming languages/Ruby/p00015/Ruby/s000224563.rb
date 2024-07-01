def first_digit(n)
  n[0]
end

def digit(n)
  n.size
end

def overflow?(a, b)
  if digit(a) > 80 || digit(b) > 80
    puts 'overflow'
    return true
  end

  if digit(a) == 80 && digit(b) == 80
    if [a, b].map { |e| first_digit(e).to_i }.inject(:+) >= 10
      puts 'overflow'
      return true
    end
  end

  false
end

input = STDIN.read.split("\n").map(&:chomp)
input.shift.to_i.times do
  a = input.shift
  b = input.shift
  next if overflow?(a, b)
  puts [a, b].map(&:to_i).inject(:+)
end