package main
import . "fmt"
import . "os"
func main() {
  var s,t string
  var n int
  Scan(&s)
  Scan(&t)
  n = len(s)
  for i:=0;i<n;i++ {
    s = s[n-1:n]+s[0:n-1]
    if s == t {
      Println("Yes")
      Exit(0)
    }
  }
  Println("No")
}