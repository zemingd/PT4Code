# -*- coding: utf-8 -*-
loop{
  x,y=STDIN.gets.split.map(&:to_i)
  for i in 1..x do
    for k in 1..y do
      print '#'
    end
    puts
  end
  puts
}