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

func gcd(a, b int) int {
    if b == 0 {
        return a
    }
    return gcd(b, a%b)
}

func primeSet(n int) []int {
  if n == 1 { return []int{} }
  for i := 2; i * i < n; i++ {
    if n % i > 0 { continue }
    P := append([]int{i}, primeSet(n / i)...)
    if len(P) > 1 && P[0] == P[1] {
      return P[1:]
    }
    return P
  }
  return []int{n}
}

func main() {
  AB := NextIntVec()
  GCD := gcd(AB[0], AB[1])
  Write(len(primeSet(GCD)) + 1)
  Output()
}