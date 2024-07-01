array = gets.chomp.split("").map(&:to_i)

case 7
when array[0] + array[1] + array[2] + array[3]
  print "#{array[0]}+#{array[1]}+#{array[2]}+#{array[3]}=7"
when array[0] + array[1] + array[2] - array[3]
  print "#{array[0]}+#{array[1]}+#{array[2]}-#{array[3]}=7"
when array[0] + array[1] - array[2] + array[3]
  print "#{array[0]}+#{array[1]}-#{array[2]}+#{array[3]}=7"
when array[0] - array[1] + array[2] + array[3]
  print "#{array[0]}-#{array[1]}+#{array[2]}+#{array[3]}=7"
when array[0] + array[1] - array[2] - array[3]
  print "#{array[0]}+#{array[1]}-#{array[2]}-#{array[3]}=7"
when array[0] - array[1] + array[2] - array[3]
  print "#{array[0]}-#{array[1]}+#{array[2]}-#{array[3]}=7"
when array[0] - array[1] - array[2] + array[3]
  print "#{array[0]}-#{array[1]}-#{array[2]}+#{array[3]}=7"
when array[0] - array[1] - array[2] - array[3]
  print "#{array[0]}-#{array[1]}-#{array[2]}-#{array[3]}=7"
end
