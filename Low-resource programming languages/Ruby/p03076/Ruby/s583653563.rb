def get_one(i)
  ten, one = i.divmod(10)
  if one == 0
    return 10
  else
    return one
  end
end

order = []
5.times do
  order << gets.to_i
end

order.sort!{ |a, b| get_one(b) <=> get_one(a) }

ans = 0
order.each_with_index do |e, idx|
  if idx == 4
    ans += e 
    break
  end
  if get_one(e) == 10
    ans += e
  else
    ans += e + (10 - get_one(e))
  end
end
puts ans