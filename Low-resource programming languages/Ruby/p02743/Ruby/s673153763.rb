# a b c
a, b, c = gets.split.map(&:to_i)
class Numeric
  #call-seq:
  #n.root -> float
  def root
    n  = self
    d1 = 0
    n, d1 = n / 100.0, d1 - 1 while n >= 100
    n, d1 = n * 100.0, d1 + 1 while n < 1
    ans = 0
    odd = 1
    0.upto(1/0.0) do |d2|
      0.upto(1/0.0) do |c|
        if n < odd
          ans = ans * 10 + c
          break
        end
        n = n - odd
        odd = odd + 2
      end
      if (d2 > 16 || n == 0)
        return ans / 10.0 ** (d1 + d2)
      end
      n = n * 100
      odd = (odd - 1) * 10 + 1
    end
  end
end
  #puts 2.root
  if a.root + b.root < c.root
    puts "Yes"
  else
    puts "No"
  end