package main

import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
)

var reader = bufio.NewReaderSize(os.Stdin, 1000000)
var writer = bufio.NewWriter(os.Stdout)
func NextLine() string {
  buffer := make([]byte, 0)
  for true {
    line, isPrefix, err := reader.ReadLine()
    if err != nil { panic(err) }
    buffer = append(buffer, line...)
    if !isPrefix { break }
  }
  return string(buffer)
}
func NextInt() int {
  n, _ := strconv.Atoi(NextLine())
  return n
}
func NextIntVec() []int {
  L := strings.Split(NextLine(), " ")
  N := make([]int, len(L))
  for i := range N {
    N[i], _ = strconv.Atoi(L[i])
  }
  return N
}
func Write(s interface{}) {
  fmt.Fprintln(writer, s)
}
func Output() {
  _ = writer.Flush()
}

func Max(A []int) int {
  max := 0
  for _, a := range A {
    if max < a { max = a }
  }
  return max
}

func Hand(H []rune, R, S, P int) int {
  DP := make([][]int, len(H) + 1)
  for i := range DP {
    DP[i] = make([]int, 3)
  }
  for i, h := range H {
    for j := range DP[i + 1] {
      for k, dp := range DP[i] {
        if j == k { continue }
        if DP[i + 1][j] < dp { DP[i + 1][j] = dp }
      }
    }
    if h == 'r' {
      DP[i + 1][2] += P
    } else if h == 's' {
      DP[i + 1][0] += R
    } else {
      DP[i + 1][1] += S
    }
  }
  return Max(DP[len(H)])
}

func main() {
  NK := NextIntVec()
  K := NK[1]
  RSP := NextIntVec()
  R, S, P := RSP[0], RSP[1], RSP[2]
  T := NextLine()
  H := make([][]rune, K)
  for i := range H {
    H[i] = make([]rune, 0)
  }
  for i, t := range T {
    H[i % K] = append(H[i % K], t)
  }
  cnt := 0
  for _, h := range H {
    cnt += Hand(h, R, S, P)
  }
  Write(cnt)
  Output()
}