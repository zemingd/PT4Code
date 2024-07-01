package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
  "sort"
)

func foo(p []int, n, k int) float64 {
  sort.Ints(p)
  sort.Sort(sort.Reverse(sort.IntSlice(p)))
  result := 0.0
  for i := 0; i < k; i++ {
    result += float64((p[i]*(p[i]+1)))/float64((2*p[i]))
    fmt.Println(p[i], result)
  }
  return result
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
