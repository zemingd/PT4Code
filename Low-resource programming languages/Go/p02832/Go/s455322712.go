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

func main() {
  N := NextInt()
  A := NextIntVec()
  find := 0
  for _, a := range A {
    if a == find + 1 { find++ }
  }
  ans := -1
  if 0 < find { ans = N - find }
  Write(ans)
  Output()
}