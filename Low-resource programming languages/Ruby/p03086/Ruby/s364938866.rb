def longest_match(s)
  cnt = 0
  s1 = 0
  s.split('').each do |c|
    if /[AGCT]/ =~ c
      s1 += 1
    else
      cnt = s1 if s1 > cnt
      s1 = 0
    end
  end
  cnt = s1 if s1 > cnt
  cnt
end

s = readline.chop
puts longest_match(s)