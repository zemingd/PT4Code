n = gets.to_i
v = gets.split.map(&:to_i)

ev = []
ov = []

n.times do |i|
	if i.even?
		ev << v[i]
	else
		ov << v[i]
	end
end

e = {}
o = {}

ev.size.times do |i|
  e[ev[i]] = (e[ev[i]] || 0) + 1
  o[ov[i]] = (o[ov[i]] || 0) + 1
end

e = e.sort_by {|k, v| -v}
o = o.sort_by {|k, v| -v}

e1 = e.shift
e2 = (e.shift || 0)
o1 = o.shift
o2 = (o.shift || 0)


if e1[0] == o1[0]
	puts n - [(e1[1] + (o2[1] || 0)), ((e2[1] || 0) + o1[1])].max
else
	puts n - (e1[1] + o1[1])
end
