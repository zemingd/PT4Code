s = gets.chomp.split('')
t = gets.chomp.split('')

count = 0
index = 0
while index < t.length && count < t.length
  shifted = 0
  old_found_index = -1
  found_index = -1
  count += 1
  while !found_index.nil?
    tt = t[index]
    old_found_index = found_index
    shifted += found_index + 1
    sa = s[found_index + 1 .. -1]
    found_index = sa.find_index(tt)
    if found_index
      index += 1
    end
    # p [tt, old_found_index, found_index]
  end
  shifted -= old_found_index + 1
  # p [count, index, found_index, old_found_index, shifted]
end

if index != t.length
  puts '-1'
else
  puts ((count - 1) * s.length) + old_found_index + 1 + shifted
end
