#! /usr/bin/env ruby

input = STDIN.read.split("\n").map{|l| l.split(" ").map{|i| i.to_i}}
input.shift

points = input.select {|p| p[2] != 0}

def get_center_height(cx, cy, px, py, ph)
  return ph + (px - cx).abs + (py - cy).abs
end

def is_center(cx, cy, points) 
  current_ch = nil
  for p in points do
    px = p[0]
    py = p[1]
    ph = p[2]
    ch = get_center_height(cx, cy, px, py, ph)

    if current_ch == nil then
      current_ch = ch
    elsif current_ch != ch then
      return false
    end
  end
  return ch
end

def get_center(points)
  for cx in 0..100 do
    for cy in 0..100 do
      is_center = is_center(cx, cy, points)
      if is_center != false
        return "#{cx} #{cy} #{is_center}"
      end
    end
  end
end

puts get_center(points)