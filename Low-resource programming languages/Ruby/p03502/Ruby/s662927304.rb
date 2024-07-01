def solve(x)
    (x % f(x)).zero?
end

def show(x)
  puts x ? 'Yes' : 'No'
end

def f(x)
    x.to_s.chars.map(&:to_i).reduce(:+)
end

show solve gets.to_i
