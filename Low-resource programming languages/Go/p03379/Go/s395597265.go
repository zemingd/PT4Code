package main

import (
  "bufio"
  "fmt"
  "os"
  "sort"
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
func NextIntIntMap() map[int]int {
  var s []string = strings.Split(NextLine()," ")
  var n,a int
  n = len(s)
  m := map[int]int{}
  for i:=0;i<n;i++ {
    a,_ = strconv.Atoi(s[i])
    m[i] = a
  }
  return m
}

func main() {
  var n,m1,m2 int
  var m float64
  n = NextInt()
  x := NextIntIntMap()
  y := Entries{}
  for key,val := range x {
    e := Entry{key,val}
    y = append(y,e)
  }
  sort.Sort(y)
  m1 = y[n/2-1].val
  m2 = y[n/2].val
  m = float64(m1+m2)*0.5
  for key:=0;key<n;key++ {
    val,_ := x[key]
    if float64(val) < m {
      fmt.Println(m2)
    } else {
      fmt.Println(m1)
    }
  }
}
type Entry struct {
  key int
  val int
}
type Entries []Entry
func(entries Entries) Len() int {
  return len(entries)
}
func(entries Entries) Swap(i,j int) {
  entries[i],entries[j] = entries[j],entries[i]
}
func(entries Entries) Less(i,j int) bool {
  if entries[i].val == entries[j].val {
    return entries[i].key < entries[j].key
  } else {
    return entries[i].val < entries[j].val
  }
}