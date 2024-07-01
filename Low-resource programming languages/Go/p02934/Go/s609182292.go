package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "strings"
)


func main() {
  var N int
  fmt.Scanf("%d", &N)
  
  var sc = bufio.NewScanner(os.Stdin)
  sc.Scan() 
  
  var As []int
  for _, AStr := range strings.Split(sc.Text(), " ") {
    A, _ := strconv.Atoi(AStr)
    As = append(As, A)
  }
  
  var ftmp float64
  for _, A := range As {
    ftmp += float64(1) / float64(A)
  }
  
  fmt.Println(1 / ftmp)
}