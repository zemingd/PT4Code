def main(argv)
  s = gets.chomp
  t = gets.chomp
  
  chmap = {}
  ('a'..'z').each{|c| chmap[c] = []}
  s.split('').each_with_index{|c, i| chmap[c].push(i)}
  
  not_partial_flag = false
  ix = 0
  iy = 0
  
  t.split('').each do |c|
    if chmap[c].length == 0 then
      not_partial_flag = true
      break
    end
    
    ret = chmap[c].bsearch_index{|y| y > iy}
    if ret == nil then
      ix += 1
      iy = chmap[c][0]
    else
      iy = chmap[c][ret]
    end
  end
  
  if not_partial_flag then
    puts (-1).to_s
  else
    puts (ix * s.length + iy + 1).to_s
  end
end

if self.to_s == 'main' then
  main(ARGV)
end