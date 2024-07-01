package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)


func next() int64 {
  sc.Scan()
  i, _ := strconv.ParseInt(sc.Text(), 10, 64)
  return i
}

func main() {
  sc.Split(bufio.ScanWords)
  n := int(next())
  arr := make([]int64, n)
  isYes := true
  
  for i := 0; i < n; i++ {
    arr[i] = next()
    for j := 0; j < i; j++ {
      if arr[i] == arr[j] {
        isYes = false
        break
      }
    }
    if isYes == false {
        break
    }
  }
  
  if isYes {
    fmt.Println("Yes")
  } else {
    fmt.Println("No")
  }
}