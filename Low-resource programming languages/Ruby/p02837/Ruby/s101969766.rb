N=gets.to_i
answers=[]
N.times do
  n_ans = gets.to_i
  anss = []
  n_ans.times do |ans|
    toks = gets.split
    raise if toks.size != 2
    anss << [toks[0].to_i - 1, toks[1].to_i]
  end
  answers << anss
end

best = 0
(2**N).times do |i|
  bin = "%0#{N}b" % i
  cur = bin.count('1')
  ok = true
  N.times do |j|
    next if i[j] == 0
    answers[j].each do |k, v|
      if i[k] != v
        ok = false
        break
      end
    end
    if !ok
      break
    end
  end
  if ok
    best = [best, cur].max
  end
end

p best

