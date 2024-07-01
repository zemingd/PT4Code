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

func Solve(){
  var N, X, Y int
  NextInt(&N, &X, &Y)
  X, Y = X - 1, Y - 1
  D := make([][]int, N)
  Q := make([]int, 0)
  var q int
  for i := range D {
    D[i] = make([]int, N)
    for j := range D[i] { D[i][j] = N }
    D[i][i] = 0
    Q = append(Q, i)
    for 0 < len(Q) {
      q = Q[0]
      Q = Q[1:]
      if q < N - 1 && D[i][q + 1] == N {
        D[i][q + 1] = D[i][q] + 1
        Q = append(Q, q + 1)
      }
      if 0 < q && D[i][q - 1] == N {
        D[i][q - 1] = D[i][q] + 1
        Q = append(Q, q - 1)
      }
      if q == X && D[i][Y] == N {
        D[i][Y] = D[i][X] + 1
        Q = append(Q, Y)
      }
      if q == Y && D[i][X] == N {
        D[i][X] = D[i][Y] + 1
        Q = append(Q, X)
      }
    }
  }
  A := make([]int, N)
  for i := range D {
    for _, d := range D[i][i + 1:] {
      A[d]++
    }
  }
  for _, a := range A[1:] {
    Write(a)
  }
}

func main() {
  Solve()
  Output()
}