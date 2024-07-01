$n, $m = gets.split.map(&:to_i)

$lights = []

$m.times do |i|
  k, *s = gets.split.map(&:to_i)
  ss = Array.new($n, 0)
  s.each do |poyo|
    ss[poyo - 1] = 1
  end
  $lights << ss
end

$answer = gets.split.map(&:to_i)

def rec(i, switches)
  if i >= $n
    cond = $m.times.all? {|i|
      sum = 0      
      $n.times do |j|
        sum += $lights[i][j] * switches[j]
      end

      sum % 2 == $answer[i]
    }

    cond ? 1 : 0
  else
    rec(i + 1, switches + [0]) + rec(i + 1, switches + [1])
  end
end

p rec(0, [])