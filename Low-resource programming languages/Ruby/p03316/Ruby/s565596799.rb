def main
  digits = ARGF.gets.chars.map(&:to_i)

  n = 0
  s = 0
  digits.reverse_each do |d|
    s += d
    n = n * 10 + d
  end

  if n % s == 0
    puts 'Yes'
  else
    puts 'No'
  end
end

if __FILE__ == $0
  main
end
