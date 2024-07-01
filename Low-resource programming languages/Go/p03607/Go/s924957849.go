package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

const size = 1000000
var reader = bufio.NewReaderSize(os.Stdin,size)
func NextLine() string {
  var line,buffer []byte
  var isPrefix bool = true
  var err error
  for ;isPrefix; {
    line,isPrefix,err = reader.ReadLine()
    if err != nil { panic(err) }
    buffer = append(buffer,line...)
  }
  return string(buffer)
}
func NextInt() int {
  var n int
  n,_ = strconv.Atoi(NextLine())
  return n
}

func main() {
  var n,a int
  m := make(map[int]struct{},n)
  n = NextInt()
  for i:=0;i<n;i++ {
    a = NextInt()
    if _,ok := m[a];ok {
      delete(m,a)
    } else {
      m[a] = struct{}{}
    }
  }
  fmt.Println(len(m))
}