N,*ls=$<.read.split.map(&:to_i)

ls = ls.sort

ret = 0

0.upto(N-1) do |i|
  (i+1).upto(N-1) do |j|
    (j+1).upto(N-1) do |k|
      if ls[i]+ls[j] <= ls[k]
        break
      else
        ret += 1
      end
    end
  end
end

p ret
