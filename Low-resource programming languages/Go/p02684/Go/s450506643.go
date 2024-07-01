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
  var A []int
  NextIntVec(&A)
  for i := range A { A[i]-- }
  D := make([]int, N)
  for i := range D { D[i]-- }
  D[0] = 0
  pos, cnt := 0, 0
  for cnt < K {
    pos = A[pos]
    cnt++
    if D[pos] >= 0 { break }
    D[pos] = cnt
  }
  if cnt < K { cnt = D[pos] + (K - cnt) % (cnt - D[pos]) }
  for i, d := range D {
    if d != cnt { continue }
    Write(i + 1)
  }
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