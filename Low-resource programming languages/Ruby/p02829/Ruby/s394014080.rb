def main
  a = gets.chomp.split(' ').map(&:to_i).first
  b = gets.chomp.split(' ').map(&:to_i).first

  if (a == 1 && b == 2 )||  (a == 2 && b == 1)
    puts 3
  elsif (a==1 && b== 3) || (a == 3 && b == 1)
    puts 2
  elsif (a == 2 && b == 3) || (a == 3 && b == 2)
    puts 1
  end
end

main
