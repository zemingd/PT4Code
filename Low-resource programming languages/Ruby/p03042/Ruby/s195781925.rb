S = gets.chomp

def a(s)
  case s.to_i
  when 1..12
    :month
  else
    :year
  end
end

puts case [a(S[0..1]), a(S[2..3])]
     when [:month, :month]
       'ANBIGUOUS'
     when [:year, :month]
       'YYMM'
     when [:month, :year]
       'MMYY'
     else
       'NA'
     end
