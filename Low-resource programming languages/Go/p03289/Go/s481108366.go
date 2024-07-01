package main
import(
  "fmt"
)
func main(){
  var s string
  fmt.Scan(&s)
  if solve(s) {
    fmt.Println("AC")
  } else {
    fmt.Println("WA")
  }
}
func solve(s string) bool{
  var c byte
  var i,n int
  n = len(s)
  f := false
  for i = 0; i <  n; i++ {
    c = s[i]
    if i == 0 && c != 'A' {
      return false;
    }
    if c == 'C' {
      if 2 <= i && i < n-1  {
        if f {
          return false;
        }
        f = true
      } else {
        return false;
      }
    } else if 'A' < c && c <= 'Z'{
      return false;
    }
  }
  return f;
}
