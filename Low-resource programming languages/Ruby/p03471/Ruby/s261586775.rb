$n,$y = gets.chomp.split(" ").map(&:to_i)

arr = []

$n.times do |n|
  ($n - n).times do |n2|
    arr << [n,n2,($n-n-n2)]
  end
end

arr.each do |ar|
  if ar[0]*10000 + ar[1]*5000 + ar[2]*1000 == $y
    puts ar.join(" ")
    exit
  end
end

puts "-1 -1 -1"