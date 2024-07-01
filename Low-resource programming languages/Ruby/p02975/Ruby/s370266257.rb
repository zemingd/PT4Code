n = gets.chomp.to_i
a = gets.chomp.split(' ').map{|i| i.to_i }

rs = {}

n.times{|i|
  (n - i - 1).times{|ii|
    j = ii + i + 1

    index = a.find_index(a[i] ^ a[j])
    if index
      rs[index] = [] unless rs[index]
      rs[index].push([i, j])
    end
  }
}

# p rs

ok = true
if rs.keys.length == 0
  ok = false
else
  rs.keys.each{|i|
    ok = false if rs[i].length != 1
  }
end

if ok
  puts 'Yes'
else
  puts 'No'
end
