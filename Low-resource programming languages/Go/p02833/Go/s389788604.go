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

func Solve(N int) int {
  if 0 < N % 2 { return 0 }
  ans := 0
  d := 1
  for k := 1; k < 19; k++ {
    d *= 10
    ans += N / d
    v := 1
    for j := 1; v *d < N; j++ { 
      v *= 5
      ans += (N / (v * d) + 1) / 2
    }
  }
  return ans
}

func main() {
  N := NextInt()
  Write(Solve(N))
  Output()
}