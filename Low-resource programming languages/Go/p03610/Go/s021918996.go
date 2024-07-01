package main
import . "fmt"
func main() {
  var s string
  var n int
  Scan(&s)
  n = len(s)
  for i:=0;i<n;i+=2 {
    Print(s[i:i+1])
  }
  Println()
}