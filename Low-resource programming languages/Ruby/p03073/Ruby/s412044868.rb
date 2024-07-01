C = {}
S = gets.chomp

def l_search(i, c)
  k = "l-#{i}-#{c}"
  return C[k] if C[k]

  C[k] =
    if i > 0
      if S[i] == c
        l_search(i - 1, c == "0" ? "1" : "0")
      else
        1 + l_search(i - 1, c == "0" ? "1" : "0")
      end
    else
      S[i] == c ? 0 : 1
    end

  C[k]
end

def r_search(i, c)
  k = "r-#{i}-#{c}"
  return C[k] if C[k]

  C[k] =
    if i < S.length - 1
      if S[i] == c
        r_search(i + 1, c == "0" ? "1" : "0")
      else
        1 + r_search(i + 1, c == "0" ? "1" : "0")
      end
    else
      S[i] == c ? 0 : 1
    end
end

if S.length == 1
  puts "0"
  return
end

if S.length == 2
  if S[0] == S[1]
    puts "1"
  else
    puts "0"
  end
  return
end

ans = 10**5 + 1

1.upto(S.length - 1) do |i|
  if S[i - 1] == S[i]
    l = S[i - 1]
    r = S[i]

    tla = l_search(i - 1, l == "0" ? "1" : "0") + r_search(i, r)
    tra = l_search(i - 1, l) + r_search(i, r == "0" ? "1" : "0")

    ans = [ans, tla, tra].min
  end
end

puts ans
