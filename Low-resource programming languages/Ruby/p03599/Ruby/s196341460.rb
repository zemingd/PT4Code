a, b, c, d, e, f = gets.chomp.split.map(&:to_i)
ua = f / 100
res = []

0.step(ua / b) do |nb|
  0.step((ua - nb * b) / a) do |na|
    w = a * na + b * nb
    # next if w == 0

    0.step((e * w) / d) do |nd|
      nc = (e * w - nd * d) / c
      s = nc * c + nd * d
      if 100 * w + s > 0 && 100 * w + s <= f
        res << [100 * w + s, s]
      end
    end
  end
end

puts (res.sort_by! {|ws, s| s.to_f / ws }[-1]).join(" ")