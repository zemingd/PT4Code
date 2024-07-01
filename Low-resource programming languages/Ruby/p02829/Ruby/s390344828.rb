def main
  A = gets.chomp.split(' ').map(&:to_i).first
  B = gets.chomp.split(' ').map(&:to_i).first

  if (A == 1 && B == 2 )||  (A == 2 && B == 1)
    puts 3
  elsif (A==1 && B== 3) || (A == 3 && B == 1)
    puts 2
  elsif (A == 2 && B == 3) || (A == 3 && B == 2)
    puts 1
  end
end

main
