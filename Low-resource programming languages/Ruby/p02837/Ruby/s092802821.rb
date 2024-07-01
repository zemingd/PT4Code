N = gets.chomp.to_i
A = []
N.times do
  n = gets.chomp.to_i
  a = {}
  n.times do
    x, y = gets.chomp.split(" ").map(&:to_i)
    a[x-1] = y
  end
  A << a
end

def check(a, liars)
  table = {}
  a.each do |list|
    list.each do |k, v|
      if table[k] != nil && table[k] != v then
        return nil
      end
      table[k] = v
    end
  end

  l = []
  table.each do |k, v|
    l << k if v == 0
  end
  p l
  p liars
  if l.sort != liars.sort then
    return nil
  end
  return l.size
end

result = check(A, [])
if result == 0 then
  puts N
  exit
end

all = (0...N).to_a

(1..N).each do |n|
  all.combination(n).each do |flips|
    a = A.clone
    flips.each do |idx|
      a[idx] = a[idx].map{ |k,v| [k, v == 1 ? 0 : 1]}.to_h
    end

    result = check(a, flips)
    if result != nil && result == n then
      puts N - n
      exit
    end
  end
end

puts "0"