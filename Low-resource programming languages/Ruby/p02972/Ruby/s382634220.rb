require 'prime'
n = gets.to_i
a = gets.split.map(&:to_i)
flg = [0] * n
result = []


class Integer
    def divisor_list
      return [1] if self == 1
      Prime.prime_division(self).map do |e|
        Array.new(e[1]+1).map.with_index do |element, i|
          e[0]**i
        end
      end.inject{|p,q| p.product(q)}.map do |a|
        [a].flatten.inject(&:*)
      end.sort
    end
  end

(1..n).reverse_each do |i|
    if flg[i-1] != a[i-1]
        result.push(i)
        i.divisor_list.each do |d|
            flg[d] = flg[d] ^ 1 
        end
    end
end

puts result.size
if result.any?
    puts result.join(" ")
end
