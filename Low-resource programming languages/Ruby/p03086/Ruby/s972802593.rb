data = gets
data = data.chomp

datas = data.chars

answer = 0
tmp_answer = 0

datas.each do|elm|
  p elm
  if ((elm == "A") || (elm == "G") || (elm == "C") || (elm == "T"))
    tmp_answer += 1
    p "COUTNTED"
  else
    if tmp_answer > answer
      answer = tmp_answer
    end
    tmp_answer = 0
  end
end
if tmp_answer > answer
  answer = tmp_answer
end
puts answer.to_s