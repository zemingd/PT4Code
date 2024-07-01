s = gets

ary = s.split('').compact.map(&:to_i)

def counts(ary, count = 0, offset = 0)
  base = ary.dup
  idxes = []
  base[offset..-1].each_with_index.each_slice(2) { |i, j|
    unless i.nil? || j.nil?
      if i[0] != j[0]
        idxes << i[1]
        idxes << j[1]
      end
    end
  }

  count += idxes.count
  [base.each_with_index.reject { |val, idx| idxes.include?(idx) }.map { |h| h[0] } , count]
end

def tansaku(ary, count = 0, results = [])
  base1, count1 = counts(ary.dup, count, 0)
  base2, count2 = counts(ary.dup, count, 1)

  if ary == base1 && ary == base2
    results << count1
    results << count2
  elsif ary != base1
    results += tansaku(base1, count1, results)
  elsif ary != base2
    results += tansaku(base2, count2, results)
  end

  results
end

print tansaku(ary).max
