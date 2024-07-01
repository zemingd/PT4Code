def main
  str = ARGF.gets.chomp

  n = str.to_i
  digits = str.chars.map(&:to_i)

  s = 0
  digits.each do |d|
    s += d
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
