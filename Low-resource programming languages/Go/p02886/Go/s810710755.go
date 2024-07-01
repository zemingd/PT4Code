package main

import (
  "fmt"
  "os"
  "bufio"
  "strings"
  "strconv"
)

func main() {
  var n int
  fmt.Scan(&n)
  
  s := bufio.NewScanner(os.Stdin)
  s.Scan()
  S := strings.Split(s.Text(), " ")
  
  A := 0
  for i := 0; i < n; i++ {
    for j := i + 1; j < n; j++ {
      d1, _ := strconv.Atoi(S[i])
      d2, _ := strconv.Atoi(S[j])
      A += d1 * d2
    }
  }
  fmt.Println(A)
}