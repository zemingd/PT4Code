people = gets.to_i
transportation = (1..5).map { gets.to_i }

time = 0
trans_people = transportation[0]
trans_time = people.quo(trans_people).to_f.ceil
time += trans_time

transportation[1..4].each.with_index do |tr, i|
  if tr < trans_people
    time += ((trans_people - tr) * trans_time).quo(tr).to_f.ceil
    trans_people = transportation[i]
  else
    time += 1
  end
end

puts time