def first_digit(n)
  n.to_i >= 0 ? n[0] : n[0..1]
end

def digit(n)
  n.to_i >= 0 ? n.size : n.size - 1
end

def overflow?(a, b)
  if digit(a) > 80 || digit(b) > 80
    puts 'overflow'
    return false
  end

  if digit(a) == 80 && digit(b) == 80
    if [a, b].map { |e| first_digit(e).to_i }.inject(:+) >= 10
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