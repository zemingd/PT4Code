func main() {
  a:=3
  b:=20
  sum := 0
  for i := 0; i < 2; i++ {
    if a > b {
      sum += a
      a--
    } else {
      sum += b
      b--
  }
  return sum
}