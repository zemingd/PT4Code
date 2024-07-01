package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
)

func foo(p []int, n, k int) float64 {
  past := 0.0
  for j := 0; j < k; j++ {
    past += float64((p[j]*(p[j]+1)))/float64((2*p[j]))
  }
  maxsum := past
  for l := 1; l < n-k+1; l++ {
    le := float64((p[l+k-1]*(p[l+k-1]+1)))/float64((2*p[l+k-1])) - float64((p[l-1]*(p[l-1]+1)))/float64((2*p[l-1]))
    past = past + le
    if le <= 0 {
      continue
    }
    if past > maxsum {
      maxsum = past
    }
  }

  return maxsum
}


var sc = bufio.NewScanner(os.Stdin)
func nextInt() int {
    sc.Scan()
    i, e := strconv.Atoi(sc.Text())
    if e != nil {
        panic(e)
    }
    return i
}

func nextText() string {
    sc.Scan()
    return sc.Text()
}

func main() {
  // input
  sc.Split(bufio.ScanWords)
  n := nextInt()
  k := nextInt()

  // store to slice
  var p []int
  for i := 0; i < n; i++ {
    p = append(p, nextInt())
  }

  // output
  fmt.Printf("%f\n", foo(p, n, k))

}
