package main

import (
  "bufio"
  "strings"
  "fmt"
  "os"
)

var sc = bufio.NewScanner(os.Stdin)
func getString() string {
    sc.Scan()
    return sc.Text()
}

func getReverse(s string) string {
  rs := []rune(s) // 今回マルチバイト文字ではないが想定してrune
  for i, j := 0, len(s)-1; i < j; i, j = i+1, j-1 {
    rs[i], rs[j] = rs[j], rs[i]
  }
  return string(rs)
}

func replacedWords(str string) string {
  r := strings.Replace(str, " remaerd", "*", -1)
  r = strings.Replace(r, " resare", "*", -1)
  r = strings.Replace(r, "maerd", "*", -1)
  r = strings.Replace(r, "esare", "*", -1)

  r = strings.Replace(r, "*", "", -1)
  
  return r
}

func main() {
  str := getString()
  str = getReverse(str)
  str = replacedWords(str)

  if str == "" {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }
}