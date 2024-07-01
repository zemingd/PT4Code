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
  
  if (list[0][0] == 0) && (list.size < (k + 2)) then
    puts cumsum[list.size].to_s
  elsif (list[0][0] == 1) && (list.size < (k + 3)) then
    puts cumsum[list.size].to_s
  else
    max = 0
    
    i = 0
    while i < list.size do
      m = -1
      if list[i][0] == 0 then
        m = [list.size, (k + (k + 0)) + i].min
      else # list[i][0] == 1
        m = [list.size, (k + (k + 1)) + i].min
      end
      
      max = [max, cumsum[m] - cumsum[i]].max
      
      i += 1
    end
    
    puts max.to_s
  end
end

if self.to_s == 'main' then
  main(ARGV)
end