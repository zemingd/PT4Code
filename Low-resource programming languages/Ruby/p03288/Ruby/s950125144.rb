def main
  r = ARGF.gets.chomp.to_i

  if r < 1200
    puts 'ABC'
  elsif r < 2800
    puts 'ARC'
  else
    puts 'AGC'
  end
end

if __FILE__ == $0
  main
end
