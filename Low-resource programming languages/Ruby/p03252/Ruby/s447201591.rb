def valid?(a, b)
  cs = {}

  b.each_char.with_index do |bc, i|
    ac = a[i]
    if cs[ac] == nil
        cs[ac] = bc
    elsif cs[ac] != bc
      return false
    end
  end

  true
end

s = gets
t = gets

ans = valid?(s, t) && valid?(t, s) ? "Yes" : "No"
puts ans
