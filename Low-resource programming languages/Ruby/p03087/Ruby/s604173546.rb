#! /bin/ruby

n, q  = gets.chomp.split(" ").map(&:to_i)
chars = gets.chomp

while line = gets
  l, r = line.chomp.split(" ").map(&:to_i)
  candidate = ""
  cnt = 0
  chars[l-1..r-1].each_char do |c|
    if candidate == 'A' && c == 'C'
      cnt+=1
      candidate = ""
    elsif candidate == "" && c == 'A'
      candidate = 'A'
    else
      candidate = ""
    end
  end
  puts cnt
end