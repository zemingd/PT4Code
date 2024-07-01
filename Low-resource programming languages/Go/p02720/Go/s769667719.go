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
  var K int
  NextInt(&K)
  R := make([][]int, 10)
  for i := range R {
    R[i] = make([]int, 10)
    for j := range R[i] {
      if i == 0 {
        R[i][j] = 1
      } else {
        R[i][j] = R[i - 1][j]
        if 0 < j { R[i][j] += R[i - 1][j - 1] }
        if j < 9 { R[i][j] += R[i - 1][j + 1] }
      }
    }
  }
  N := make([][]int, 10)
  for i := range N {
    N[i] = make([]int, 10)
    if 0 < i { N[i][0] = N[i - 1][9] }
    for j := range N[i][1:] {
      N[i][j + 1] = N[i][j] + R[i][j + 1]
    }
  }
  A := make([]int, 11)
  k := K
  for i := 9; 0 <= i; i-- {
    m := 0
    if 1 < A[i + 1] { m = N[i][A[i + 1] - 2] }
    for j := MaxInt(A[i + 1] - 1, 0); j < 10; j++ {
      if N[i][j] - m < k { continue }
      A[i] = j
      if 0 < j { k -= N[i][j - 1] - m }
      break
    }
  }
  ans := 0
  for i := 9; 0 <= i; i-- {
    ans *= 10
    ans += A[i]
  }
  fmt.Println(ans)
}

func main() {
  Solve()
  Output()
}