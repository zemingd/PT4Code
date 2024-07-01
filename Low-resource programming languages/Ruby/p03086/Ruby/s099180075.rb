a = gets.chomp.to_s
cnt = 0
flg = 0
res = 0
a.each_char do |s|
  case s
  when 'A','C','G','T'
    flg = 1
    cnt += 1
  else
    if flg == 1
      if res <= cnt
        res = cnt
      end
      flg = 0
    end
    cnt = 0
  end
end
puts res