def comb(x,y,sum,g,t)
  if (sum <= g) && (t[sum] == 0)
    t[sum] = 1
    comb(x,y,sum+x,g,t)
    comb(x,y,sum+y,g,t)
  end
end

def main()
  t = gets.chomp.split(' ').map(&:to_f)
  sw,s = Hash.new(0),Hash.new(0)
  comb(100 * t[0],100 * t[1], 0, t[5], sw)
  comb(t[2], t[3], 0, t[5], s)
  target = 0.0
  ans_sw,ans_s = 0,0
  sw.each_key{|x|
    next if x == 0
    s.each_key{|y|
      if (100.0 * y <= x * t[4]) && (x + y <= t[5])
        if (100.0 * y) >= (x + y) * target
          target = (100.0 * y) / (x + y)
          ans_sw,ans_s = x,y
        end
      end
    }
  }
  puts "#{(ans_sw+ans_s).to_i} #{ans_s.to_i}"
end

main()