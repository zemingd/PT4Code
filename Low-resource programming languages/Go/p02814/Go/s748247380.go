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
func NextInt() int {
  n, _ := strconv.Atoi(NextLine())
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

func GCD(a, b int) int {
  if a < b { a, b = b, a }
  for 0 < b {
    a, b = b, a % b
  }
  return a
}

func LCM(A []int) int {
  lcm := A[0]
  for _, a := range A {
    lcm = lcm * a / GCD(lcm, a)
  }
  return lcm
}

func main() {
  NM := NextIntVec()
  M := NM[1]
  A := NextIntVec()
  k := 0
  for a := A[0]; a % 2 == 0; k++ {
    a /= 2
  }
  ans := -1
  for _, a := range A[1:] {
    cnt := 0
    for _a := a; _a % 2 == 0; cnt++ {
      _a /= 2
    }
    if cnt != k {
      ans = 0
      break
    }
  }
  if ans < 0 { ans = (M / (LCM(A) / 2) + 1) / 2 }
  Write(ans)
  Output()
}