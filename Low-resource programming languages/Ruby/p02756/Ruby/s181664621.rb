s = gets.chomp.to_s
q_n = gets.chomp.to_i
q = []

now_r = 0
q_n.times do
  t,f,c = gets.chomp.split(' ').map(&:to_s)
  if t.to_i === 1
    now_r += 1
  else
    q << [now_r, t.to_i, f.to_i, c]
  end
end

is_even_total_r = now_r.even?
unless is_even_total_r
  s.reverse!
end

def add_front?(is_even_total_r, now_r, f)
  if now_r.even?
    if is_even_total_r
      return f === 1 ? true : false
    else
      return f === 1 ? false : true
    end
  else
    if is_even_total_r
      return f === 1 ? false : true
    else
      return f === 1 ? true : false
    end
  end
end

fronts = []
backs = []
q.each do |query|
  now_r,t,f,c = query
  if add_front?(is_even_total_r, now_r, f)
    fronts.unshift c
  else
    backs << c
  end
end

result = fronts.join + s + backs.join


puts result
