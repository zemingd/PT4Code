# set
h,a = gets.chomp.split(" ").map(&:to_i)
count = 0

# main
loop do
  h -= a
  count += 1

  break if h <= 0
end

print ("#{count}\n")