K = gets.to_i
A, B = gets.split.map(&:to_i)

A.upto B do |i|
  if i % K == 0
    puts "OK"
    exit
  end
end
puts "NG"