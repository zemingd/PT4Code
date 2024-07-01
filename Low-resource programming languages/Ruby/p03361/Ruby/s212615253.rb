def gets_arrays(n)
  ans = []
  for i in 1..n
    ans << gets.delete("\n").split('')
  end
  ans
end

h, w = gets.split.map(&:to_i)
swss = gets_arrays(h)
m = 0
for i in 0..(h - 1)
  sws  = swss[i]
  for j in 0..(w - 1)
    if sws[j] == '#'
      if i == 0
        if j == 0
          b = swss[i + 1][j]
          d = sws[j + 1]
        elsif j == w - 1
          b = swss[i + 1][j]
          c = sws[j - 1]
          if b == '.' && d == '.'
            m += 1
            break
          end
        else
          b = swss[i + 1][j]
          c = sws[j - 1]
          d = sws[j + 1]
          if b == '.' && c == '.' && d == '.'
            m += 1
            break
          end
        end
      elsif i == h - 1
        if j == 0
          a = swss[i - 1][j]
          d = sws[j + 1]
          if a == '.' && d == '.'
            m += 1
            break
          end
        elsif j == w - 1
          a = swss[i - 1][j]
          c = sws[j - 1]
          if a == '.' && c == '.'
            m += 1
            break
          end
        else
          a = swss[i - 1][j]
          c = sws[j - 1]
          d = sws[j + 1]
          if a == '.' && c == '.' && d == '.'
            m += 1
            break
          end
        end
      elsif j == 0
        a = swss[i - 1][j]
        b = swss[i + 1][j]
        d = sws[j + 1]
        if a == '.' && b == '.' && d == '.'
          m += 1
          break
        end
      elsif j == w - 1
        a = swss[i - 1][j]
        b = swss[i + 1][j]
        c = sws[j - 1]
        if a == '.' && b == '.' && c == '.'
          m += 1
          break
        end
      else
        a = swss[i - 1][j]
        b = swss[i + 1][j]
        c = sws[j - 1]
        d = sws[j + 1]
        if a == '.' && b == '.' && c == '.' && d == '.'
          m += 1
          break
        end
      end
    end
  end
end
if m == 0
  puts 'Yes'
else
  puts 'No'
end