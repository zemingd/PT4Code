s = gets.chomp
l = s.length
c = "Yes"

(l/2).times {|i|
  if s[i] == s[-i-1] then
  else
    c = "No"
    break
  end
}

if c == "Yes" then
  s[0..((l/2)-1)].length.times {|i|
    if s[0..((l/2)-1)][i] == s[0..((l/2)-1)][-i-1] then
    else
      c = "No"
      break
    end
  }
end

if c == "Yes" then
  s[((l+1)/2)..(l-1)].length.times {|i|
    if s[((l+1)/2)..(l-1)][i] == s[((l+1)/2)..(l-1)][-i-1] then
    else
      c = "No"
      break
    end
  }
end
print(c)