require 'pp'
n = gets.to_i
a = gets.split.map(&:to_i)

if a.count(1) == 0
  p -1
  exit
end

ind = 0
cnt = 0
loop do
  until a[0] == ind+1
    # p a
    # p ind+1
    last = a.shift
    if a.empty?
      p n - last
      exit
    end
  end
  ind += 1
end

