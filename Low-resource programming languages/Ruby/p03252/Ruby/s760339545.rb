s = gets.chomp
t = gets

ks = {}
kt = {}

ok = true
s.size.times do |i|
  unless ks.include?(s[i])
    ks[s[i]] = ks.size
  end

  unless kt.include?(t[i])
    kt[t[i]] = kt.size
  end

  unless ks[s[i]] == kt[t[i]]
    ok = false
    break
  end
end

puts(ok ? 'Yes' : 'No')
