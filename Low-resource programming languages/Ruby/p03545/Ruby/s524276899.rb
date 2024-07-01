n = gets.chomp.split(//).map(&:to_i)

ans = 0
at = ''
bt = ''
ct = ''
2.times do |a|
  2.times do |b|
    2.times do |c|
      if a == 0
        at = '+'
        ans = n[0] + n[1]
      else
        at = '-'
        ans = n[0] - n[1]
      end
      if b == 0
        bt = '+'
        ans += n[2]
      else
        bt = '-'
        ans -= n[2]
      end
      if c == 0
        ct = '+'
        ans += n[3]
      else
        ct = '-'
        ans -= n[3]
      end
      if ans == 7
        puts n[0].to_s + at + n[1].to_s + bt + n[2].to_s + ct + n[3].to_s + '=7'
        exit
      end
    end
  end
end
