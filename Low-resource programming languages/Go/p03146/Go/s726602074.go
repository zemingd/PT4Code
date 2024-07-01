package main
 
import (
  "bufio"
  "os"
  "strconv"
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
func Write(s interface{}) {
  fmt.Fprintln(writer, s)
}
func Output() {
  _ = writer.Flush()
}

func collatz(a int) int {
  if a % 2 > 0 { return 3 * a + 1 }
  return a / 2
}

func main() {
  s := NextInt()
  A := make([]int, 100000)
  cnt := 1
  for A[s] == 0 {
    A[s]++
    s = collatz(s)
    cnt++
  }
  Write(cnt)
  Output()
}