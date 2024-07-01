input = gets.split.map(&:to_i)
takahashi_hp = input[0]
takahashi_atk = input[1]
aoki_hp = input[2]
aoki_atk = input[3]

is_takahashi_next = true

while(takahashi_hp > 0 && aoki_hp > 0) do
  if is_takahashi_next
    is_takahashi_next = !is_takahashi_next
    aoki_hp -= takahashi_atk
    next
  else
    is_takahashi_next = !is_takahashi_next
    takahashi_hp -= aoki_atk
    next
  end
end

puts takahashi_hp <= 0 ? 'No' : 'Yes'