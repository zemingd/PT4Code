
require 'pp'

def c(n, a)
  return [0, 0] if n < a

  t = a
  c = 1
  loop {
    if t * a <= n
      t *= a
      c += 1
    else
      break
    end
  }
  return [t, c]
end



def f(n)
  a = Array.new(n+1, 0)
  1.upto(n) do |x|
    #puts "x: #{x}"
    v9, c9 = c(x, 9)
    #puts "c9: #{v9}, #{c9}"
    v6, c6 = c(x, 6)
    #puts "c6: #{v6}, #{c6}"

    t = []
    t.push(a[x - v9] + 1) if c9 != 0
    t.push(a[x - v6] + 1) if c6 != 0
    t.push(a[x -  1] + 1)

    #p t

    a[x] = t.min
    #puts ""
  end

  # n.times do |i|
  #   puts "#{i} #{a[i]}"
  # end
  return a[n]
end



N = gets.to_i
puts f(N)
