package main

import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
)

func Solve() {
  var N, M, A, B int
  NextInt(&N, &M)
  R := make([]int, N)
  for i := range R { R[i] = i }
  var Find func(int)int
  Find = func(u int) int {
    if u == R[u] { return u }
    R[u] = Find(R[u])
    return R[u]
  }
  Unite := func(u, v int) {
    ru, rv := Find(u), Find(v)
    if ru < rv {
      R[rv] = ru
    } else {
      R[ru] = rv
    }
  }
  for i := 0; i < M; i++ {
    NextInt(&A, &B)
    A--; B--
    Unite(A, B)
  }
  G := make([]int, N)
  for _, r := range R { G[Find(r)]++ }
  Write(MaxInt(G...))
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
func AbsInt(x int) int {
  if x < 0 { x = -x }
  return x
}