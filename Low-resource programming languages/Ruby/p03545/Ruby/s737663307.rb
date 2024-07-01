abcd = gets.split("").map(&:to_i)
8.times do |i|
  f = abcd.zip(("%03b" % i).gsub("0", "-").gsub("1", "+").split("")).flatten.join
  if eval(f) == 7
    puts f + "=7"
    exit
  end
end