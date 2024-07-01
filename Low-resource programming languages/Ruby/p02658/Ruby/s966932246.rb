n = gets.strip.to_i
arr = gets.chomp.split(" ").map(&:to_i)

# n = 2
# arr = [1000000000, 1000000000]


# n = 3
# arr = [101, 9901, 999999000001]


MAX = 10**18

arr = arr.sort{|a, b| b<=>a}

if arr.include?(0)
  puts 0
  exit(0)
end

i = 1
sum = arr[0]

loop do
  sum = sum * arr[i]
  p sum

  if sum > MAX
    puts "-1"

    exit(0)
  end
  
  i += 1
  break if i == n
end

puts sum


