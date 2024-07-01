package main
import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
)

func Solve() {
  var N int
  var A []int
  NextInt(&N)
  NextIntSlice(&A)
  ans := 0
  prev := A[0]
  for _, a := range A[1:] {
    if a < prev {
      ans += prev - a
    } else {
      prev = a
    }
  }
  Write(ans)
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