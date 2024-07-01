N = gets.to_i

ans = []
def func(s, ans, n)
  ans.push(s.to_i) if s.to_i >= 357 && (s.chars & ['3', '5', '7']).length == 3

  [3, 5, 7].each do |i|
    v = s + i.to_s
    return if v.to_i > N

    func(v, ans, n)
  end
end

func('', ans, N)
p ans.length
