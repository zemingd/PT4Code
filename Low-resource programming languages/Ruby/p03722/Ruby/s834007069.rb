N, M = gets.split.map(&:to_i)
e = []
M.times do
  t = gets.split.map(&:to_i)
  t[2] = -t[2]
  e << t
end

arr = Array.new(N+1, Float::INFINITY)
arr[1] = 0
(N-1).times do
  e.each do |a,b,c|
    if arr[b] > arr[a] + c
      arr[b] = arr[a] + c
    end
  end
end

before = arr[N]
(N-1).times do
  e.each do |a,b,c|
    if arr[b] > arr[a] + c
      arr[b] = arr[a] + c
    end
  end
end

puts before == arr[N] ? -before : "inf"
