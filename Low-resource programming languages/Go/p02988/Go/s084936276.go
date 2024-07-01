package main

import (
  "bufio"
  "fmt"
  "os"
  "strings"
   "strconv"
)
 
var sc = bufio.NewScanner(os.Stdin)
 
func main() {
  if sc.Scan() {
  }
  if sc.Scan() {
    s := strings.Split(sc.Text(), " ")
    cnt := 0
    for i := 1; i < len(s) - 1; i++ {
      a, _ := strconv.Atoi(s[i-1])
      b, _ := strconv.Atoi(s[i])
      c, _ := strconv.Atoi(s[i+1])
      if a < b && b < c {
        cnt++
      }
      if c < b && b < a {
        cnt++
      }
    }
    fmt.Println(cnt)
  }
}
