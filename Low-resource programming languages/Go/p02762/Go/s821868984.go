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

func Find(R *[]int, u int) int {
  if (*R)[u] == u { return u }
  (*R)[u] = Find(R, (*R)[u])
  return (*R)[u]
}
func Union(R *[]int, u, v int) {
  ru, rv := Find(R, u), Find(R, v)
  if ru < rv {
    (*R)[rv] = ru
  } else if rv < ru {
    (*R)[ru] = rv
  }
}

func Solve() {
  var N, M, K int
  NextInt(&N, &M, &K)
  G := make([]int, N)
  R := make([]int, N)
  for i := range R {
    R[i] = i
  }
  var A, B, C, D int
  for i := 0; i < M; i++ {
    NextInt(&A, &B)
    A, B = A - 1, B - 1
    G[A]++
    G[B]++
    Union(&R, A, B)
  }
  U := make([]int, N)
  for i := range R {
    U[Find(&R, i)]++
  }
  for i := 0; i < K; i++ {
    NextInt(&C, &D)
    C, D = C - 1, D - 1
    if R[C] != R[D] { continue }
    G[C]++
    G[D]++
  }
  F := make([]int, N)
  for i, g := range G {
    F[i] = U[R[i]] - g - 1
  }
  WriteIntVec(F)
}

func main() {
  Solve()
  Output()
}