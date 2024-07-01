package main

import (
  "fmt"
  "os"
  "bufio"
  "strconv"
  "math"
)

func main() {
  var w [100]int
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  n, _ := strconv.Atoi(sc.Text())

  for i := 0; i < n; i++ {
    sc.Scan()
    w[i], _ = strconv.Atoi(sc.Text())
  }

  out := math.MaxInt32
  for i := 0; i < n; i++ {
    left := 0
    for j := 0; j <= i; j++ {
      left += w[j]
    }
    right := 0
    for j := i + 1; j < n; j++ {
      right += w[j]
    }
    if int(math.Abs(float64(left - right))) < out {
      out = int(math.Abs(float64(left - right)))
    }
  }
  fmt.Println(out)

}
