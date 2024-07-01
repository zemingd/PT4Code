# coding: utf-8

loop do
  input = gets
  judge = input.split(" ")
  x = judge[0].to_i
  y = judge[1].to_i
  if x == 0 && y == 0
    break
  end
  if x < y
    puts "#{x} #{y}"
  else
    puts "#{y} #{x}"
  end
end