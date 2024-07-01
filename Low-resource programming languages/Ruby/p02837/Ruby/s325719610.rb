n = gets.to_i
lists = Array.new(n)
(0..n-1).each do |i|
  k = gets.to_i
  lists[i] = Array.new(k)
  (0..k-1).each do |l|
    lists[i][l] = gets.split.map(&:to_i)
  end
end
answer = Array.new(n)
(0..lists[0].size-1).each do |i|
  answer[0] = 1
  answer[lists[0][i][0] - 1] = lists[0][i][1]
end
(1..n-1).each do |i|
  if answer[i] != 0
    (0..lists[i].size-1).each do |l|
      if answer[lists[i][l][0]-1].nil?
        answer[lists[i][l][0]-1] = lists[i][l][1]
      elsif answer[lists[i][l][0]-1] == lists[i][l][1]
        answer[i] = 1
      else
        answer[i] = 0
        (0..lists[i].size-1).each do |m|
          lists[i][m][1]
          answer[lists[i][m][0] - 1] = lists[i][m][1] == 1 ? 0 : 1
        end
        break
      end
    end
  else
    (0..lists[i].size-1).each do |l|
      if answer[lists[i][l][0]-1].nil?
        answer[lists[i][l][0]-1] = lists[i][l][1] == 1 ? 0 : 1
      elsif answer[lists[i][l][0]-1] != lists[i][l][1]
        break
      else
        answer = Array.new(n){0}
      end
    end
  end
end
puts answer.count(1)
