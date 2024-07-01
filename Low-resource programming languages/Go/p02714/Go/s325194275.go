package main
import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
)

func GCD(a, b int) int {
  if a < b { a, b = b, a }
  if b == 0 { return a }
  return GCD(b, a % b)
}

func Solve() {
  var N int
  NextInt(&N)
  S := NextLine()
  R := make([]int, 0)
  G := make([]int, 0)
  B := make([]int, 0)
  SR := make([]int, N + 1)
  SG := make([]int, N + 1)
  SB := make([]int, N + 1)
  for i, s := range S {
    if s == 'R' {
      R = append(R, i)
      SR[i]++
    } else if s == 'G' {
      G = append(G, i)
      SG[i]++
    } else {
      B = append(B, i)
      SB[i]++
    }
  }
  for i := N - 2; 0 <= i; i-- {
    SR[i] += SR[i + 1]
    SG[i] += SG[i + 1]
    SB[i] += SB[i + 1]
  }
  A := 0
  for _, r := range R {
    for _, g := range G {
      if g < r { continue }
      b := 2 * g - r
      A += SB[g] - SB[MinInt(b, N)] + SB[MinInt(b + 1, N)]
    }
    for _, b := range B {
      if b < r { continue }
      g := 2 * b - r
      A += SG[b] - SG[MinInt(g, N)] + SG[MinInt(g + 1, N)]
    }
  }
  for _, g := range G {
    for _, r := range R {
      if r < g { continue }
      b := 2 * r - g
      A += SB[r] - SB[MinInt(b, N)] + SB[MinInt(b + 1, N)]
    }
    for _, b := range B {
      if b < g { continue }
      r := 2 * b - g
      A += SR[b] - SR[MinInt(r, N)] + SR[MinInt(r + 1, N)]
    }
  }
  for _, b := range B {
    for _, g := range G {
      if g < b { continue }
      r := 2 * g - b
      A += SR[g] - SR[MinInt(r, N)] + SR[MinInt(r + 1, N)]
    }
    for _, r := range R {
      if r < b { continue }
      g := 2 * r - b
      A += SG[r] - SG[MinInt(g, N)] + SG[MinInt(g + 1, N)]
    }
  }
  Write(A)
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