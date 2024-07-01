package main
import (
  "fmt"
  "bufio"
  "os"
)

var(
  S string
  T string
  n int
)

func main() {
  var sc = bufio.NewScanner(os.Stdin)
  if sc.Scan() {
    S = sc.Text()
  }
  if sc.Scan() {
    T = sc.Text()
  }
  
  for i, _ := range S {
    if(S[i] == T[i]) {
    	n++
    }
  }
  
  fmt.Println(n)
}