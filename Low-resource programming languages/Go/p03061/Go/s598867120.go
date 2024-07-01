package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

func gcd(a, b int) int {
  var r int
  if a == 0 {
    return b
  }
  if b == 0 {
    return a
  }
  for {
    r = a % b
    if r == 0 {
      break
    }
    a = b
    b = r
  }
  return b
}

func L(i int, a []int) int {
  if i == 0 {
    return 0
  }
  return gcd(L(i - 1, a), a[i - 1])
}

func R(i int, a []int) int {
  if i == len(a) {
    return 0
  }
  return gcd(R(i + 1, a), a[i])
}

func main() {
  sc := bufio.NewScanner(os.Stdin)
  sc.Split(bufio.ScanWords)

  sc.Scan()
  n, _ := strconv.Atoi(sc.Text())

  a := make([]int, n)

  for i := 0; i < n; i++ {
    sc.Scan()
    n, _ := strconv.Atoi(sc.Text())

    a[i] = n
  }

  max := 0
  for i := 0; i < n; i++ {
    m := gcd(L(i, a), R(i + 1, a))
    if m > max {
      max = m
    }
  }

  fmt.Println(max)
}
