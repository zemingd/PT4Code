K = gets.to_i
A,B = gets.split.map(&:to_i)

(A..B).each { |num|
  if num % K == 0
    puts "OK"
    break
  elsif num == B
    puts "NG"
    break
  end
}