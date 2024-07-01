package main

import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
  "sort"
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
func NextInt(A ...*int) {
  L := strings.Split(NextLine(), " ")
  for i, a := range A {
    *a, _ = strconv.Atoi(L[i])
  }
}
func NextIntVec(A *[]int) {
  L := strings.Split(NextLine(), " ")
  (*A) = make([]int, len(L))
  for i, l := range L {
    (*A)[i], _ = strconv.Atoi(l)
  }
}
func NextFloat(A ...*float64) {
  L := strings.Split(NextLine(), " ")
  for i, a := range A {
    *a, _ = strconv.ParseFloat(L[i], 64)
  }
}
func NextFloatVec(A *[]float64) {
  L := strings.Split(NextLine(), " ")
  (*A) = make([]float64, len(L))
  for i, l := range L {
    (*A)[i], _ = strconv.ParseFloat(l, 64)
  }
}
func Write(s interface{}) {
  fmt.Fprintln(writer, s)
}
func WriteIntVec(A []int) {
  S := make([]string, len(A))
  for i, a := range A {
    S[i] = strconv.Itoa(a)
  }
  Write(strings.Join(S, " "))
}
func Output() {
  _ = writer.Flush()
}

func MaxInt(A ...int) int {
  max := A[0]
  for _, a := range A {
    if max < a { max = a }
  }
  return max
}
func MinInt(A ...int) int {
  min := A[0]
  for _, a := range A {
    if a < min { min = a }
  }
  return min
}

func Search(A []int, x int) int {
  N := len(A)
  if x < A[0] { return 0 }
  if A[N - 1] <= x { return N }
  lex, gtx := 0, N - 1
  for 1 < gtx - lex {
    med := (gtx + lex) / 2
    if x < A[med] {
      gtx = med
    } else {
      lex = med
    }
  }
  return lex + 1
}

func Count(A []int, x int) int {
  N := len(A)
  cnt := 0
  for i, a := range A {
    if a == 0 {
      if 0 <= x { cnt += N - i - 1 }
    } else if 0 < a {
      k := x / a
      if x < 0 && x % a != 0 { k-- }
      cnt += MaxInt(Search(A, k) - i - 1, 0)
    } else {
      k := x / a
      if x % a == 0 { k-- }
      cnt += MaxInt(N - MaxInt(Search(A, k), i + 1), 0)
    }
  }
  return cnt
}

func Solve() {
  var N, K int
  NextInt(&N, &K)
  var A []int
  NextIntVec(&A)
  sort.Ints(A)
  M := MaxInt(A[0] * A[0], A[N - 1] * A[N - 1])
  m := MinInt(A[0] * A[0], A[0] * A[N - 1], A[N - 1] * A[N - 1]) - 1
  for 1 < M - m {
    med := (M + m) / 2
    if Count(A, med) < K {
      m = med
    } else {
      M = med
    }
  }
  Write(M)
  return
}

func main() {
  Solve()
  Output()
}