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
  k := next()
  arrP := make([]int, n, n)
  arrSum := make([]int, n-k+1, n-k+1)
  maxSum := arrSum[0]
  maxArrIndex := 0
  
  for i := 0; i < n; i++ {
    arrP[i] = next()
    if i < k {
      arrSum[0] += arrP[i]
    } else {
      arrSum[i-k+1] = arrSum[i-k] + arrP[i] - arrP[i-k]
      if arrSum[i-k+1] > maxSum {
        maxSum = arrSum[i-k+1]
        maxArrIndex = i-k+1
      }
    }
  }
  
  ex := 0.0
  for i := maxArrIndex; i < maxArrIndex+k; i++ {
    ex += float64(arrP[i]+1) / 2.0
  }
  
  fmt.Println(ex)
}