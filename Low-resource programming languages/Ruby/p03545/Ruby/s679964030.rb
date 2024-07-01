array = gets.chomp.split("").map(&:to_i)

if array[0] + array[1] + array[2] + array[3] == 7
  print "#{array[0]}+#{array[1]}+#{array[2]}+#{array[3]}=7"
elsif array[0] + array[1] + array[2] - array[3] == 7
  print "#{array[0]}+#{array[1]}+#{array[2]}-#{array[3]}=7"
elsif array[0] + array[1] - array[2] + array[3] == 7
  print "#{array[0]}+#{array[1]}-#{array[2]}+#{array[3]}=7"
elsif array[0] - array[1] + array[2] + array[3] == 7
  print "#{array[0]}-#{array[1]}+#{array[2]}+#{array[3]}=7"
elsif array[0] + array[1] - array[2] - array[3] == 7
  print "#{array[0]}+#{array[1]}-#{array[2]}-#{array[3]}=7"
elsif array[0] - array[1] + array[2] - array[3] == 7
  print "#{array[0]}-#{array[1]}+#{array[2]}-#{array[3]}=7"
elsif array[0] - array[1] - array[2] + array[3] == 7
  print "#{array[0]}-#{array[1]}-#{array[2]}+#{array[3]}=7"
elsif array[0] - array[1] - array[2] - array[3] == 7
  print "#{array[0]}-#{array[1]}-#{array[2]}-#{array[3]}=7"
end
