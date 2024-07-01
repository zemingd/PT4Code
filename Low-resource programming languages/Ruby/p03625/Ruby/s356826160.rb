N = gets.to_i
AS = gets.chomp.split.map(&:to_i)

h = Hash.new { |h, k| h[k] = [] }
AS.each do |a|
  h[a] << a
end

if h.all? { |k, v| v.length < 2 }
  puts(0)
  exit
end

ns = []
h.sort_by { |k, v| -k }.each do |k, v|
  next if v.length < 2
  before = 0
  v.each do |e|
    if e == before
      ns << [e, before]
      before = 0
    else
      before = e
    end
  end
end

result = 0
a = []
while b = ns.shift
  if !a.empty? && a[0] != b[0]
    result += a[0] * b[0]
    a = []
  else
    a = b
  end
end
p result