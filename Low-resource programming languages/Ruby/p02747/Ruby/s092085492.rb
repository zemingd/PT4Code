# frozen_string_literal: true

def factor(n)
  return [1] if n == 1

  `factor #{n}|sed -r 's/[0-9]+://g'|tr ' ' '\n'|sort -n`.split.map(&:to_i)
end

# Example: factors(100) => {2=>2, 5=>2}
def factors_and_num(n)
  factors = factor(n)
  ret = Hash.new(0)
  factors.each do |i|
    ret[i] += 1
  end
  ret
end

def uniq_factor(n)
  `factor #{n}|sed -r 's/[0-9]+://g'|tr ' ' '\n'|sort -n|uniq`.split.map(&:to_i)
end

if gets.scan(/hi/).count != 0
  puts 'Yes'
else
  puts 'No'
end
