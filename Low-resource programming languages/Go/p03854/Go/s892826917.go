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

func replacedWords_1(str string) string {
  r := strings.Replace(str, "erase", "-", -1)
  r = strings.Replace(r, "-r", "*", -1)
  r = strings.Replace(r, "-", "*", -1)
  r = strings.Replace(r, "dream", "-", -1)
  r = strings.Replace(r, "-er", "*", -1)
  r = strings.Replace(r, "-", "*", -1)
 
  r = strings.Replace(r, "-er", "", -1)
  
  return r
}

func replacedWords_2(str string) string {
  r := strings.Replace(str, "maerd", "*", -1)
  r = strings.Replace(r, " remaerd", "*", -1)
  r = strings.Replace(r, "esare", "*", -1)
  r = strings.Replace(r, " resare", "*", -1)

  r = strings.Replace(r, "*", "", -1)
  
  return r
}

func main() {
  str := getString()
  str1 := replacedWords_1(str)
  str = getReverse(str)
  str2 := replacedWords_2(str)

  if str1 == "" && str2 == "" {
    fmt.Println("YES")
  } else {
    fmt.Println("NO")
  }
}