package main

import (
  "fmt"
  "strconv"
  "os"
  "bufio"
)

var sc *bufio.Scanner
var c int


func nextInt() int {
  sc.Scan()
  i, _ := strconv.Atoi(sc.Text())
  return i
}

func isEven(num int) bool {
  return num % 2 == 0
}

func check(num int) {
  if isEven(num) {
    r := num / 2
    c++
    check(r)
  } else {
    return
  }
}

func main() {
  sc = bufio.NewScanner(os.Stdin)
  c = 0
  sc.Split(bufio.ScanWords)
  
  n := nextInt()
  
  for i := 0; i < n; i++ {
    num := nextInt()
    check(num)
  }
  res := fmt.Sprintf("%d", c)
  fmt.Println(res)
}
