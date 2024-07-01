class PQueue
  def push(x); @a ||= []; @sorted = false; @a.push(x); self; end
  def pop; @a.sort_by! {|v, a, b, c| v} unless @sorted; @sorted = true; @a.pop; end
end

require 'set'

def main
  x, y, z, k = gets.chomp.split(' ').map(&:to_i)
  a = gets.chomp.split(' ').map(&:to_i)
  b = gets.chomp.split(' ').map(&:to_i)
  c = gets.chomp.split(' ').map(&:to_i)
  a.sort!; b.sort!; c.sort!
  pq = PQueue.new ;
  flag = Set.new 
  ai = a.size - 1; bi = b.size - 1; ci = c.size - 1
  pq.push([a[ai] + b[bi] + c[ci], ai, bi, ci]);
  flag.add([ai, bi, ci])
  k.times {|i|
    v, ai, bi, ci = pq.pop
    puts v
    pq.push([a[ai - 1] + b[bi] + c[ci], ai - 1, bi, ci]) if ai >= 1 && !flag.include?([ai - 1, bi, ci])
    flag.add([ai - 1, bi, ci])
    pq.push([a[ai] + b[bi - 1] + c[ci], ai, bi - 1, ci]) if bi >= 1 && !flag.include?([ai, bi - 1, ci])
    flag.add([ai, bi - 1, ci])
    pq.push([a[ai] + b[bi] + c[ci - 1], ai, bi, ci - 1]) if ci >= 1 && !flag.include?([ai, bi, ci - 1])
    flag.add([ai, bi, ci - 1])
  }
end

main