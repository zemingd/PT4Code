while
  A = input()
  if A < 3
    print("A is not collect.\n")
  	return
  end
  B = input()
  if B > 20
    print("B is not collect.\n")
	return
  end
end

if A-1 > B
  print(2*A -1, "\n")
elsif B-1 > A
  print(2*B - 1, "\n")
else A == B
  print(A+B, "\n")
end
