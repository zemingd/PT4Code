S=gets.chomp
Qn=gets.to_i

ans_f = ""
ans_b = ""
reverse_cnt = 0
cnt = 0
Qn.times do
  q=gets.chomp.split
  if q[0] == "1"
    reverse_cnt += 1
  else
    if reverse_cnt % 2 == 0
      if q[1] == "1"
        ans_f = q[2] + ans_f
      else
        ans_b += q[2]
      end
    else
      if q[1] == "1"
        ans_b += q[2]
      else
        ans_f = q[2] + ans_f
      end
    end
  end
end
ans = ans_f + S + ans_b
ans.reverse! if reverse_cnt % 2 != 0
puts ans