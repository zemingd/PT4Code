def compress(s)
  list = []
  
  obj = [s[0].to_i, 0]
  
  s.size.times do |i|
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
  
  list = compress(s)
  
  cumsum = [0] * (list.size + 1)
  list.size.times do |i|
    cumsum[i + 1] = cumsum[i] + list[i][1]
  end
  
  if list.size < (k + 1) then
    puts cumsum[list.size].to_s
  else
    max = 0
    
    if list[0][0] == 0 then
      (list.size - (k + 1)).times do |i|
        max = [max, cumsum[(k + 1) + i] - cumsum[i]].max
      end
    else
      (list.size - (k + 4)).times do |i|
        max = [max, cumsum[(k + 4) + i] - cumsum[i]].max
      end
    end
    
    puts max.to_s
  end
end

if self.to_s == 'main' then
  main(ARGV)
end