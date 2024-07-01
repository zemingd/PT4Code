puts (s=gets[0,((k=gets).length >= 3 ? 100 : k.to_i)].chars.map(&:to_i).uniq).length == [1] ? 1 : (s[0] == 1 ? s[1] : s[0])
