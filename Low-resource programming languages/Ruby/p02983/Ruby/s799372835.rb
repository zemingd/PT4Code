l, r = gets.chomp.split(' ').map{|i| i.to_i }

min = 2000000001
(r - l).times{|i1|
  i = i1 + l
  (r - l - i1 - 1).times{|j1|
    j = j1 + i + 1
    im = i % 2019
    jm = j % 2019
    mod = (im * jm) % 2019
    if mod < min
      min = mod
    end
  }
}

puts min
