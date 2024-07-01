package main

import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
)

func Solve() {
  var N, K int
  NextInt(&N, &K)
  var P, C []int
  NextIntSlice(&P)
  NextIntSlice(&C)
  A := make([]int, N)
  M := make([][][]int, N)
  for i := range M {
    A[i] = -1000000000
    M[i] = make([][]int, N + 1)
    M[i][0] = []int{i, 0}
    for j := range M[i][1:] {
      p := P[M[i][j][0]] - 1
      M[i][j + 1] = []int{p, M[i][j][1] + C[p]}
      A[i] = MaxInt(M[i][j + 1][1], A[i])
      if j + 1 == K || p == i {
        a := 0
        for k := 0; k <= K % (j + 1); k++ { a = MaxInt(M[i][k][1], a) }
        A[i] = MaxInt(M[i][j + 1][1] * (K / (j + 1)) + a, A[i])
      }
    }
  }
  Write(MaxInt(A...))
}

func main() {
  Solve()
  Output()
}

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
func NextIntSlice(A *[]int) {
  L := strings.Split(NextLine(), " ")
  if len(L) == 1 && L[0] == "" {
    (*A) = make([]int, 0)
    return
  }
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
func NextFloatSlice(A *[]float64) {
  L := strings.Split(NextLine(), " ")
  if len(L) == 1 && L[0] == "" {
    (*A) = make([]float64, 0)
    return
  }
  (*A) = make([]float64, len(L))
  for i, l := range L {
    (*A)[i], _ = strconv.ParseFloat(l, 64)
  }
}
func Write(S ...interface{}) {
  fmt.Fprintln(writer, S...)
}
func WriteIntSlice(A []int) {
  B := make([]interface{}, len(A))
  for i, a := range A { B[i] = a }
  fmt.Fprintln(writer, B...)
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
func SumInt(A ...int) int {
  sum := 0
  for _, a := range A {
    sum += a
  }
  return sum
}