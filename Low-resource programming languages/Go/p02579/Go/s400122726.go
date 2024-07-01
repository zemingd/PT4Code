package main
import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
)

func Solve() {
  var H, W int
  var C, D []int
  NextInt(&H, &W)
  NextIntSlice(&C)
  C[0]--; C[1]--
  NextIntSlice(&D)
  D[0]--; D[1]--
  M := make([][]bool, H)
  for i := range M {
    M[i] = make([]bool, W)
    for j, s := range NextLine() {
      if s == '.' { M[i][j] = true }
    }
  }
  R := make([]int, H * W)
  for i := range R { R[i] = i }
  var Find func(int) int
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
  for i := range R {
    h, w := i / W, i % W
    if !M[h][w] { continue }
    if h > 0 && M[h - 1][w] { Unite(i - W, i) }
    if w > 0 && M[h][w - 1] { Unite(i - 1, i) }
  }
  for i := range R { R[i] = Find(i) }
  G := make([]map[int]struct{}, H * W)
  for i := range G { G[i] = make(map[int]struct{}) }
  for i := range R {
    h, w := i / W, i % W
    for x := MaxInt(h - 2, 0); x < MinInt(h + 3, H); x++ {
      for y := MaxInt(w - 2, 0); y < MinInt(w + 3, W); y++ {
        if M[x][y] && R[x * W + y] != R[i] { G[R[i]][R[x * W + y]] = struct{}{} }
      }
    }
  }
  L := make([]int, H * W)
  for i := range L { L[i]-- }
  L[R[C[0] * W + C[1]]] = 0
  Q := []int{R[C[0] * W + C[1]]}
  for len(Q) > 0 {
    u := Q[0]
    Q = Q[1:]
    for v := range G[u] {
      if L[v] >= 0 { continue }
      L[v] = L[u] + 1
      Q = append(Q, v)
    }
  }
  Write(L[R[D[0] * W + D[1]]])
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