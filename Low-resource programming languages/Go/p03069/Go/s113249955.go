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
  var line, buffer []byte
  var isPrefix bool = true
  var err error
  for isPrefix {
    line, isPrefix, err = reader.ReadLine()
    if err != nil { panic(err) }
    buffer = append(buffer, line...)
  }
  return string(buffer)
}
func NextInt() int {
  var n int
  n, _ = strconv.Atoi(NextLine())
  return n
}
func NextIntVec() []int {
  L := strings.Split(NextLine(), " ")
  N := make([]int, len(L))
  for i := range N {
    N[i], _ = strconv.Atoi(L[i])
  }
  return N
}
func Write(s interface{}) {
  fmt.Fprintln(writer, s)
}
func Output() {
  _ = writer.Flush()
}

func main() {
  N := NextInt()
  S := NextLine()
  W := make([]int, N + 1)
  B := make([]int, N + 1)
  cnt := N
  for i := N; 0 < i; i-- {
    W[i - 1] = W[i]
    if S[i - 1] == '.' { W[i - 1]++ }
  }
  for i, s := range S {
    B[i + 1] = B[i]
    if s == '#' { B[i + 1]++ }
    if W[i] + B[i] < cnt { cnt = W[i] + B[i] }
  }
  if W[N] + B[N] < cnt { cnt = W[N] + B[N] }
  Write(cnt)
  Output()
}