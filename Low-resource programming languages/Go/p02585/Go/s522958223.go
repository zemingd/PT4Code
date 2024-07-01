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
  for i := range P { P[i]-- }
  NextIntSlice(&C)
  V := make([]int, N)
  for i := range V { V[i]-- }
  L := make([][]int, N)
  for i := range V {
    if V[i] >= 0 { continue }
    V[i] = i
    p := P[i]
    c := C[p]
    l := 1
    for p != i {
      V[p] = i
      p = P[p]
      c += C[p]
      l++
    }
    L[i] = []int{l, c}
  }
  A := make([]int, N)
  for i := range A {
    lc := L[V[i]]
    p := P[i]
    c := C[p]
    A[i] = C[p]
    for j := 1; j < K % lc[0]; j++ {
      p = P[p]
      c += C[p]
      A[i] = MaxInt(c, A[i])
    }
    if lc[1] > 0 { A[i] += (K / lc[0]) * lc[1] }
  }
  M := make([][][]int, N)
  for i := range M { M[i] = [][]int{[]int{P[i], C[P[i]]}} }
  for j, n := 0, 1; n < N; j, n = j + 1, n * 2 {
    for i := range M {
      p := P[M[i][j][0]]
      M[i] = append(M[i], []int{p, M[i][j][1] + M[p][j][1]})
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