def power(i)
  if i == 0
    0
  else
    Math.log10(i.abs).to_i + 1
  end
end

def is_753?(i)
  x = i.to_s
  s,f,t=false
  x.each_char do |c|
    case true
    when c == "3"
      t=true
      return true if s&&f&&t
    when c == "5"
      f=true
      return true if s&&f&&t
    when c == "7"
      s=true
      return true if s&&f&&t
    else
      return false
    end
  end
  s&&f&&t
end

def f(i)
  s = i.to_s
  digits = s.length
  result = 0
  (3..digits).each do |ds|
    [3, 5, 7].repeated_permutation(ds).each do |is|
      n = is.reduce(0) do |memo, item|
        memo + item * (10 ** power(memo))
      end
      # puts n
      if n <= i && is_753?(n)
        result += 1
      end
    end
  end
  result
end

N = $stdin.read.chomp.to_i
puts f(N)
