def main(argv)
  n = gets.chomp.to_i
  p = gets.chomp.split(' ').map(&:to_i)
  
  swapped = false
  flag = true
  index_pair = [-1, -1]
  n.times do |i|
    if p[i] != (i + 1) then
      if swapped then
        if i != index_pair[1] then
          flag = false
          break
        end
      else
        j = p[i] - 1
        index_pair = [i, j]
        if p[j] == (i + 1) then
          swapped = true
        else
          flag = false
          break
        end
      end
    end
  end
  
  puts (flag ? 'YES' : 'NO')
end

if self.to_s == 'main' then
  main(ARGV)
end