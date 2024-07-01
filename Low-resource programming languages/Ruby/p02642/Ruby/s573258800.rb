n = gets.chomp.to_i
aset = {}
gets.chomp.split(' ').each{|i|
  ii = i.to_i
  aset[ii] = 0 if aset[ii].nil?
  aset[ii] += 1
}
as = aset.keys.sort{|a, b| b <=> a }

p aset
p as

i = 0
count = 0
as.each{|ai|
  is_warikireru = false
  if aset[ai] > 1
    i += 1
    next
  end
  (n - i - 1).times{|jj|
    j = jj + i + 1
    aj = as[j]
    # p [count, i, j, ai, aj, ai % aj === 0]
    if ai % aj === 0
      is_warikireru = true
      break
    end
  }
  count += 1 unless is_warikireru
  i += 1
}

puts count
