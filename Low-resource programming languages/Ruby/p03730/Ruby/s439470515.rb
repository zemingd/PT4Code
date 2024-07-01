a, b, c = gets.split.map(&:to_i)

(1..100).each{|n|
  if (a * n) % b == c
    puts "YES"
    exit
  end
}

puts "NO"