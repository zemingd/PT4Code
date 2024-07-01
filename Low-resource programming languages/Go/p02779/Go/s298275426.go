package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)


func next() int {
  sc.Scan()
  i, _ := strconv.Atoi(sc.Text())
  return i
}

func main() {
  sc.Split(bufio.ScanWords)
  n := next()
  arr := make([]int, n)
  isYes := true
  
  for i := 0; i < n; i++ {
    arr[i] = next()
    for j := 0; j < i; j++ {
      if arr[i] == arr[j] {
        isYes = false
      }
    }
  }
  
  if isYes {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}