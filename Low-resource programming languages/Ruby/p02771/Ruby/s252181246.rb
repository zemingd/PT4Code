a, b, c, = gets.split.map(&:to_i)
if a == b
  if a != c
    print("Yes")
    return 0
  end
end
if b == c
  if b != a
    print("Yes")
    return 0
  end
end
if c == a
  if c != b
    print("Yes")
    return 0
  end
end
print("No")