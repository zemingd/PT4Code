n = gets.chomp.to_i
as = []
aset = {}
gets.chomp.split(' ').each{|i|
  ii = i.to_i
  if aset[ii].nil?
    aset[ii] = 0
    index = as.bsearch_index{|v| v < ii }
    if index.nil?
      as.push(ii)
    else
      as.insert(index, ii)
    end
  end
  aset[ii] += 1
}

# p aset
# p as

length = as.length

i = 0
count = 0
as.each{|ai|
  if aset[ai] > 1
    i += 1
    next
  end
  is_warikireru = false
  (length - i - 1).times{|jj|
    # p [count, i, jj + i + 1, ai, as[jj + i + 1], ai % as[jj + i + 1] === 0]
    if ai % as[jj + i + 1] === 0
      is_warikireru = true
      break
    end
  }
  count += 1 unless is_warikireru
  i += 1
}

puts count
