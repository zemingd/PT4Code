package main
import "fmt"
func main() {
  var s string
  var n,m int
  fmt.Scan(&s)
  n = len(s)
  m = 0
  for i:=0;i<n;i++ {
    if s[i:i+1] == "1" { m++ }
  }
  if m > n-m { m = n-m }
  fmt.Println(2*m)
}