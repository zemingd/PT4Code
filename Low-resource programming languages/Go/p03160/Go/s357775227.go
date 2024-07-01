package main

import (
  "bufio"
  "io"
  "fmt"
  "os"
  "strconv"
)

func abs(a int) int {
  if a > 0 {
    return a
  }
  return -a
}

type MyScanner struct {
  sc *bufio.Scanner
}

func NewScanner(r io.Reader) *MyScanner {
  sc := bufio.NewScanner(r)
  sc.Split(bufio.ScanWords)
  return &MyScanner{sc}
}

func (ms *MyScanner) nextInt() int {
  if ms.sc.Scan() {
    i, err := strconv.Atoi(ms.sc.Text())
    if err != nil {
      panic(err)
    }
    return i
  }
  panic("failed to scan")
}

func (ms *MyScanner) nextString() string {
  if ms.sc.Scan() {
    return ms.sc.Text()
  }
  panic("failed to scan")
}

func solve(r io.Reader) {

  sc := NewScanner(r)
  N := sc.nextInt()
  
  h := make([]int, N)
  dp := make([]int, N)

  for i := 0; i < N; i++ {
    h[i] = sc.nextInt()
    if i > 0 {
      dp[i] = abs(h[i-1] - h[i]) + dp[i-1]
      if i > 1 {
        if p := abs(h[i-2] - h[i]) + dp[i-2]; dp[i] > p {
          dp[i] = p
        }
      }
    }
  }
  fmt.Println(dp[N-1])
}

func main() {
  solve(os.Stdin)
}