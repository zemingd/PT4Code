n = gets.chop.to_i
s = gets.chop.split('')
max = 0
(0..s.length-2).each do |i|
  checked = {}
  count = 0
  left, right = s[0..i], s[i+1..s.length-1]
  left.each do |e|
    next if !checked[e].nil?
    if right.include?(e)
      count += 1
      checked[e] = true
    end
  end
  max = [max, count].max
end

p max
