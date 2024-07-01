package main
 
import (
  "bufio"
  "os"
  "strconv"
  "strings"
  "fmt"
  "sort"
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

func Count(L *[]int, l int) int {
  N := len((*L))
  if (*L)[N - 1] <= l { return N }
  if l < (*L)[0] { return 0 }
  high := N - 1
  low := 0
  for 1 < high - low {
    med := (high + low) / 2
    if (*L)[med] < l {
      low = med
    } else {
      high = med
    }
  }
  return high
}

func main() {
  N := NextInt()
  L := NextIntVec()
  sort.Ints(L)
  cnt := 2
  for i := 0; i < N - 1; i++ {
    for j := i + 1; j < N; j++ {
      d := L[j] - L[i]
      offset := 0
      if L[i] < d { offset = 1 }
      long := Count(&L, L[i] + L[j]) - 2
      short := Count(&L, d + 1) - offset
      cnt += long - short
    }
  }
  Write(cnt / 3)
  Output()
}