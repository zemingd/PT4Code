N = gets.to_i
a = []
a = gets.split.map(&:to_i)

ans = a[0]
1.upto (N-1).floor do |i|
  ans = ans * a[i]
  if ans == 0
    puts 0
    exit
  end
end

if ans > 10**18
  puts -1
  exit
end

((N-1).floor+1).upto (N-1) do |i|
  ans = ans * a[i]
  if ans == 0
    puts 0
    exit
  end
end

if ans > 10**18
  puts -1
  exit
end

puts ans