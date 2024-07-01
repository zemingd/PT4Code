N = gets.to_i
H = gets.split.map(&:to_i)
H.push(100000000000000)

$max_score = 0
$next_index = 0

def score(index)
  con_score = 0
  H.each.with_index(index) do |h, i|
    if H[i] >= H[i + 1] then
      con_score += 1
    else
      break
    end
  end
  $next_index = con_score + index + 1
  return con_score
end
  
while $next_index != N do
max_cand = score($next_index)
if $max_score < max_cand then
  $max_score = max_cand
end
end
  
p $max_score