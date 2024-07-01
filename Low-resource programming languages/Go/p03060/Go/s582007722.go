package main

import (
  "bufio"
  "os"
  "fmt"
  "strings"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func main() {
  _, vs, cs := nextLine(), nextLine(), nextLine()
  vv := strings.Split(vs, " ")
  cc := strings.Split(cs, " ")
  var max int
  for i, v := range vv {
    vi, _ := strconv.Atoi(v)
    ci, _ := strconv.Atoi(cc[i])
    if vi > ci {
      max += vi - ci
    }
  }
  fmt.Println(max)
}
