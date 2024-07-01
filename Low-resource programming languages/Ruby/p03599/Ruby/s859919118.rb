A,B,C,D,E,F = gets.split.map(&:to_i)
W = Array.new(F + 1); W[0] = 0
S = Array.new(F + 1); S[0] = 0

(0 .. F).each do |w|
  W[w] = 1 if w - (100 * A) >= 0 && W[w - (100 * A)]
  W[w] = 1 if w - (100 * B) >= 0 && W[w - (100 * B)]
end

(0 .. F).each do |s|
  S[s] = 1 if s - C >= 0 && S[s - C]
  S[s] = 1 if s - D >= 0 && S[s - D]
end

q = 0.0
q0 = (E * 100).to_f / (100 + E)
ws = [100 * A, 0]

(0 .. F).each do |w|
  (0 .. F).each do |s|
    if W[w] && S[s] && s + w <= F
      v = (s * 100).to_f / (s + w)
      if v > q && v <= q0
        q = v
        ws[0] = s + w
        ws[1] = s
      end
    end
  end
end
puts ws.join(' ')
