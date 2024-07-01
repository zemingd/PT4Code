# せいぜいひとつ繰り上がって10*Nになる程度なので
# 全探索で構わんという罠

n, k = gets.chomp.split.map(&:to_i)
arr = gets.chomp.split
p arr
n.upto(10*n) do |i|
  flag = true
  i.to_s.chars.each do |c|
    if arr.include?(c)
      flag = false
      break
    end
  end
  if flag
    puts i
    exit
  end
end