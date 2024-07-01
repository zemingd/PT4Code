package main
import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
  "container/heap"
)

type Item struct {
  Priority int
  Entry interface{}
}
type Heap []*Item
func (H Heap) Len() int { return len(H) }
func (H Heap) Less(i, j int) bool { return H[i].Priority < H[j].Priority }
func (H Heap) Swap(i, j int) { H[i], H[j] = H[j], H[i] }
func (H *Heap) Pop() interface{} {
  Old := *H
  n := len(Old)
  item := Old[n - 1]
  *H = Old[0:n - 1]
  return item
}
func (H *Heap) Push(x interface{}) {
  item := x.(*Item)
  *H = append(*H, item)
}
type PriorityQueue struct {
  Comparator func(e interface{}) int
  Items Heap
}
func (PQ *PriorityQueue) Push(e interface{}) {
  item := Item{PQ.Comparator(e), e}
  heap.Push(&PQ.Items, &item)
}
func (PQ *PriorityQueue) Pop() interface{} {
  return heap.Pop(&PQ.Items).(*Item).Entry
}
func (PQ PriorityQueue) Len() int { return len(PQ.Items) }
func InitPQ(F func(interface{}) int) PriorityQueue {
  var H Heap
  return PriorityQueue{F, H}
}

func Solve() {
  var H, W, K, h1, w1, h2, w2 int
  var pq []int
  NextInt(&H, &W, &K)
  NextInt(&h1, &w1, &h2, &w2)
  h1--; w1--; h2--; w2--
  C := make([]string, H)
  for i := range C { C[i] = NextLine() }
  D := make([][]int, H)
  for i := range D {
    D[i] = make([]int, W)
    for j := range D[i] { D[i][j] = H * W }
  }
  D[h1][w1] = 0
  F := func(e interface{}) int { return e.([]int)[0] }
  PQ := InitPQ(F)
  PQ.Push([]int{0, h1, w1})
  U := func(d, h, w, dh, dw int) {
    for k := 1; k <= K; k++ {
      x, y := h + dh * k, w + dw * k
      if x < 0 || x >= H || y < 0 || y >= W { break }
      if C[x][y] == '@' { break }
      if D[x][y] <= d { break }
      if d + 1 == D[x][y] { continue }
      D[x][y] = d + 1
      PQ.Push([]int{d + 1, x, y})
    }
  }
  for 0 < PQ.Len() {
    pq = PQ.Pop().([]int)
    d, h, w := pq[0], pq[1], pq[2]
    U(d, h, w, 1, 0)
    U(d, h, w, -1, 0)
    U(d, h, w, 0, 1)
    U(d, h, w, 0, -1)
  }
  if D[h2][w2] >= H * W { D[h2][w2] = -1 }
  Write(D[h2][w2])
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