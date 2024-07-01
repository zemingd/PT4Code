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
  ABX := NextIntVec()
  B := ABX[1] / ABX[2]
  A := (ABX[0] - 1) / ABX[2]
  if ABX[0] == 0 { A = -1 }
  Write(B - A)
  Output()
}