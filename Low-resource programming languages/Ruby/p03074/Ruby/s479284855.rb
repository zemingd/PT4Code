N,K = gets.split.map(&:to_i)
S = gets.chomp
s_split = []
point = 0
S.chars.each_with_index{|c,i|
  next if i == 0
  if S[i] != S[i-1]
    s_split << S[point..(i-1)]
    point = i
  end

  if i == (S.size-1) && point != i
    s_split << S[point..i]
    point = i
  end
}

if s_split.size <= 2*K
  puts S.length
else
  ans = 0
  s_split.each_with_index{|e,i|
    if s_split.size < i + 2*K 
      break
    else
      tmp_ans = 0
      s_split[i,2*K].each{|e2|
        tmp_ans += e2.size
      }
      ans = tmp_ans if ans < tmp_ans
    end
  }
  puts ans
end