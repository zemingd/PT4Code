def main
  x = gets.chomp.to_i

  if x == 3 || x == 5 || x == 7
    puts 'YES'
  else
    puts 'NO'
  end
end

if __FILE__ == $0
  main
end
