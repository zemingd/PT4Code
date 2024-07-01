package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"

  "sort"
)

func foo(minus, zero, plus []int, k int) int {
  nummi := len(minus) * len(plus)
  numze := len(zero) * (len(minus) + len(plus))
  if k <= nummi {
    var seki []int
    for i := 0; i < len(minus); i++ {
      for j := 0; j < len(plus); j++ {
        seki = append(seki, -1 * minus[i] * plus[j])
      }
    }
    sort.Ints(seki)
    return seki[k-1]
  }
  if k <= nummi + numze {
    return 0
  }
  var seki []int
  for i := 0; i < len(minus)-1; i++ {
    for j := i+1; j < len(minus); j++ {
      seki = append(seki, minus[i] * minus[j])
    }
  }
  for i := 0; i < len(plus)-1; i++ {
    for j := i+1; j < len(plus); j++ {
      seki = append(seki, plus[i] * plus[j])
    }
  }
  sort.Ints(seki)
  return seki[k-1-nummi-numze]
}

// input process
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
  var minus []int
  var plus []int
  var zero []int
  for i := 0; i < n; i++ {
    e := nextInt()
    if e >= 0 {
      plus = append(plus, e)
    } else if e == 0 {
      zero = append(zero, e)
    } else {
      minus = append(minus, e*(-1))
    }
  }

  // output
  fmt.Println(foo(minus, zero, plus, k))
}
