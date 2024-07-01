a, b = gets.chomp.split(' ').map(&:to_i)
#p a                                                                                       
#p b                                                                                       

n = 0

# 安直に全探索                                                                             
[*1..9].each{|x|
  [*0..9].each{|y|
    [*0..9].each{|z|
      tmp = 10001 * x + 1010 * y + 100 * z
      n += 1 if a <= tmp and tmp <= b
    }
  }
}

puts n
