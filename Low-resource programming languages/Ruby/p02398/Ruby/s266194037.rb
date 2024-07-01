class Main
  str = gets.split(" ").map(&:to_i)
  count = 0
  str[0]..str[1].each do |n|
    count += 1 if str[2]%n == 0
  end
  puts count
end
