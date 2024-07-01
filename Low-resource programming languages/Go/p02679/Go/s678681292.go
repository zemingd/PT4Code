package main
import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
)

const p = 1000000007

func Pow(n, k int) int {
  m := 1
  for 1 << uint(m) <= k { m++ }
  P := make([]int, m)
  P[0] = n % p
  for i := range P[1:] { P[i + 1] = P[i] * P[i] % p }
  a := 1
  for i := 0; 0 < k; i++ {
    if k % 2 == 1 { a = a * P[i] % p }
    k /= 2
  }
  return a
}

func GCD(a, b int) int {
  if a < b { a, b = b, a }
  if b == 0 { return a }
  return GCD(b, a % b)
}

func Solve() {
  var N int
  NextInt(&N)
  F := make([]int, 3)
  MA := make(map[int]map[int]int)
  MB := make(map[int]map[int]int)
  var a, b, gcd int
  var ok bool
  Add := func(M *map[int]map[int]int, a, b int) {
    a, b = AbsInt(a), AbsInt(b)
    gcd = GCD(a, b)
    a, b = a / gcd, b / gcd
    if _, ok = (*M)[a]; !ok { (*M)[a] = make(map[int]int) }
    if _, ok = (*M)[a][b]; !ok { (*M)[a][b] = 0 }
    (*M)[a][b]++
  }
  for i := 0; i < N; i++ {
    NextInt(&a, &b)
    if a == 0 && b == 0 {
      F[0]++
    } else if a == 0 {
      F[1]++
    } else if b == 0 {
      F[2]++
    } else {
      if (a > 0 && b > 0) || (a < 0 && b < 0) {
        Add(&MA, a, b)
      } else {
        Add(&MB, a, b)
      }
    }
  }
  cnt := 1
  var v int
  var M map[int]int
  for a, M = range MA {
    for b, v = range M {
      if _, ok = MB[b][a]; ok {
        cnt = cnt * ((Pow(2, v) + Pow(2, MB[b][a]) + p - 1) % p) % p
      } else {
        cnt = cnt * Pow(2, v) % p
      }
    }
  }
  for a, M = range MB {
    for b, v = range M {
      if _, ok = MA[b][a]; !ok {
        cnt = cnt * Pow(2, v) % p
      }
    }
  }
  ans := (F[0] + cnt * ((Pow(2, F[1]) + Pow(2, F[2]) + p - 1) % p) + p - 1) % p
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