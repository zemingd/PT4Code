package main
import . "fmt"
func main() {
  var s,n int
  set := make(map[int]struct{})
  Scan(&s)
  n = 1
  for ;; {
    if _,ok := set[s];ok {
      break
    } else {
      set[s] = struct{}{}
      s = f(s)
      n++
    }
  }
  Println(n)
}
func f(n int) int {
  if n%2 == 0 {
    return n/2
  } else {
    return 3*n + 1
  }
}