def popcount(n)
  n.to_s(2).count("1")
end

def change(str, n)
  if str[n] == "0"
    str[n] = "1"
  else
    str[n] = "0"
  end
  
  str
end

def f(n)
  i = 0
  loop do
    n = n % popcount(n)
    
    if n.zero?
      puts i + 1
      return
    end
    i += 1
  end
end

n = gets.strip.to_i
x = gets.strip

n.times do |i|
  target = change(x.dup, i).to_i(2)
  f(target)
end