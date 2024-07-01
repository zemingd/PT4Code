$n = gets.to_i
$ans = 0

(1..9).each do|k|
  def sub(q, k)
    if q.size == k
      return if not q.include?(3) or not q.include?(5) or not q.include?(7)
      m = q.map{|i| i.to_s}.join('').to_i
      if m <= $n
        $ans += 1
      end
    else
      sub(q + [3], k)
      sub(q + [5], k)
      sub(q + [7], k)
    end
  end
  sub([], k)
end

p $ans
