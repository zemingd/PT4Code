s = gets.split("").map(&:to_i)
8.times do |i|
  ret = s[0]
  3.times do |j|
    ret += s[j+1]*(-1)**(1&(i >> j))
  end
  if ret == 7
    print s[0]
    3.times do |j|
      print (1&(i >> j)) == 0 ? "+" : "-"
      print s[j+1]
    end
    puts "=7"
    exit
  end
end