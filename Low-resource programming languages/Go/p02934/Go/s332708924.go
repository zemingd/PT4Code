NR == 1 { n = $0; }
NR == 2 { split($0, A); exit; }
END {
  sum = 0;
  for (i = 1; i <= n; i++) {
    sum += 1.0 / A[i];
  }
  print 1.0/sum;
}