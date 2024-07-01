package main

import (
  "bufio"
  "container/list"
  "fmt"
  "os"
  "strconv"
  "strings"
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
func NextIntArray() []int {
  var s []string = strings.Split(NextLine()," ")
  var n int = len(s)
  var a []int = make([]int,n)
  for i:=0;i<n;i++ {
    a[i],_ = strconv.Atoi(s[i])
  }
  return a
}

func main() {
  var n int = NextInt()
  var a []int = NextIntArray()
  lst := list.New()
  for i:=0;; {
    lst.PushBack(a[i])
    i++
    if i == n { break }
    lst.PushFront(a[i])
    i++
    if i == n { break }
  }
  var v int
  if n%2 == 0 {
    v,_ = lst.Remove(lst.Front()).(int)
    fmt.Printf("%d",v)
    for ;lst.Len()>0; {
      v,_ = lst.Remove(lst.Front()).(int)
      fmt.Printf(" %d",v)
    }
  } else {
    v,_ = lst.Remove(lst.Back()).(int)
    fmt.Printf("%d",v)
    for ;lst.Len()>0; {
      v,_ = lst.Remove(lst.Back()).(int)
      fmt.Printf(" %d",v)
    }
  }
  fmt.Println()
}