#!/usr/bin/env ruby
n = STDIN.readline().strip.to_i
s = STDIN.readline().strip.chars
def make_direction(s)
  n = s.length
  w, e = [], []
  w[0], e[0] = 0, 0
  for i in (1..n) do
    w[i] = w[i-1] + (s[i-1] == 'W' ? 1 : 0)
  end
  w[n+1], e[n+1] = 0, 0
  n.downto(1) do |i|
    e[i] = e[i+1] + (s[i-1] == 'E' ? 1 : 0)
  end
  w.shift
  w.pop
  e.shift
  e.pop
  # puts "s:#{s}"
  # puts "w:#{w}"
  # puts "e:#{e}"
  # puts "d:#{e.zip(w).map{|e, w| e + w }}"
  e.zip(w).map{|e, w| e + w }
end
def search_min(e_w)
  min, i = e_w.each_with_index.min
  min - 1
end
puts "#{search_min(make_direction(s))}"
