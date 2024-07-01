def max(a, b); a > b ? a : b; end

def count_by_bit(a, m)
  n = a.size
  k = max(m, a.max.bit_length)
  Array.new(k, 0).tap do |cnt|
    n.times do |i|
      k.times { |j| cnt[j] += a[i][j] }
    end
  end
end

def count_to_num(cnt)
  cnt.reverse_each.inject(0) do |ans,i|
    ans *= 2
    ans += i
  end
end

def solve_1(n,k,a)
  m = (k+1).bit_length - 1
  count_by_bit(a, m).tap do |cnt|  
    m.times do |i|
      cnt[i] = max(cnt[i], n - cnt[i])
    end
  end
end

def solve_2(n,k,a)
  m = k.bit_length
  count_by_bit(a, m).tap do |cnt|
    m.times do |i|
      if cnt[i] < n - cnt[i] && k[i] == 1
        cnt[i] = n - cnt[i]
      end
    end
  end
end

n,k = gets.to_s.split.map{ |v| v.to_i }
a = gets.to_s.split.map{ |v| v.to_i }
ans = [solve_1(n,k,a), solve_2(n,k,a)].map{ count_to_num(_1) }.max
puts ans
