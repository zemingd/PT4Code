n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

h = a.group_by(&:itself).map{ |key, value| [key, value.count] }.to_h

arr = []
h.each do |k, v|
  if v >= 4
    arr.push(k)
    arr.push(k)
  elsif v >= 2
    arr.push(k)
  end
end
arr.sort!.reverse!
if arr.size < 2
  p 0
else
  p arr[0] * arr[1]
end
