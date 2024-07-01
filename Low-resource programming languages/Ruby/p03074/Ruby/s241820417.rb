#!/usr/bin/env ruby

def compress(n, s)
  list = []
  
  obj = [s[0].to_i, 0]
  
  n.times do |i|
    if obj[0] != s[i].to_i then
      list.push(obj.dup)
      
      obj[0] = s[i].to_i
      obj[1] = 1
    else
      obj[1] += 1
    end
  end
  
  list.push(obj.dup)
  
  return list
end

def main(argv)
  (n, k) = gets.chomp.split(' ').map(&:to_i)
  s = gets.chomp
  
  list = compress(n, s)
  
  cumsum = [0] * (list.size + 1)
  list.size.times do |i|
    cumsum[i + 1] = cumsum[i] + list[i][1]
  end
  
  if list.size < (k + 1) then
    puts cumsum[list.size].to_s
  else
    max = 0
    
    i = 0
    while i < list.size do
      if list[i][0] == 1 then
        m = [list.size, (k + 4) + i].min
        max = [max, cumsum[m] - cumsum[i]].max
      else # list[i][0] == 0
        m = [list.size, (k + 1) + i].min
        max = [max, cumsum[m] - cumsum[i]].max
      end
      
      i += 1
    end
    
    puts max.to_s
  end
end

if self.to_s == 'main' then
  main(ARGV)
end