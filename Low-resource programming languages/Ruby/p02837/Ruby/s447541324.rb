n = gets.to_i
a = []
x = []
y = []

n.times do |i|
  a << gets.to_i
  xa = []
  ya = []

  a[i].times do |j|
    xtmp, ytmp = gets.split.map(&:to_i)
    xa << xtmp
    ya << ytmp
  end
  x << xa
  y << ya
end

def solve(n, a, x, y, i)
  # puts "case #{i}"
  n.times do |ni|
    next if i[ni] == '0'

    a[ni].times do |ai|
      xij = x[ni][ai]

      # puts "#{i[xij-1]} != #{y[ni][ai]}"
      if i[xij-1] != y[ni][ai].to_s
        return -1
      end
    end
  end

  i.count('1')
end

max = 0
(2**n).times do |i|
  max = [max, solve(n, a, x, y, sprintf("%0#{n}b", i))].max
end

puts max
