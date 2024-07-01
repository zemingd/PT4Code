# set
num_people = gets.chomp.to_i
who_is_boss = gets.chomp.split(" ").map(&:to_i)
boss = 0
count_arr = Array.new(num_people, 0)

# main
0.upto(who_is_boss.length - 1) do |i|
  boss = who_is_boss[i] - 1
  count_arr[boss] += 1
end

0.upto( count_arr.length - 1 ) do |j|
  print ("#{count_arr[j]}\n")
end