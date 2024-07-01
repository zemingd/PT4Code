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

func main() {
  AB := NextIntVec()
  GCD := gcd(AB[0], AB[1])
  k := 2
  cnt := 1
  for ; GCD > 1; k++ {
    if GCD % k > 0 { continue }
    cnt += 1
    _k := k
    for GCD % k == 0 {
      if GCD % _k == 0 {
        GCD /= _k
        _k *= _k
      } else {
        _k /= k
      }
    }
  }
  Write(cnt)
  Output()
}