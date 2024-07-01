package main

import (
  "bufio"
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
func NextInts() (int,int) {
  var x,y int
  var s []string = strings.Split(NextLine()," ")
  x,_ = strconv.Atoi(s[0])
  y,_ = strconv.Atoi(s[1])
  return x,y
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
  var h,w int = NextInts()
  var a [][]int = make([][]int,h)
  for i:=0;i<h;i++ {
    a[i] = NextIntArray()
  }
  sets := Sets{}
  for i:=0;; {
    for j:=0;j<w-1;j++ {
      if a[i][j]%2 == 1 {
        sets = append(sets,Set{Point{i+1,j+1},Point{i+1,j+2}})
        a[i][j+1]++
      }
    }
    if i == h-1 { break }
    if a[i][w-1]%2 == 1 {
      sets = append(sets,Set{Point{i+1,w},Point{i+2,w}})
      a[i+1][w-1]++
    }
    i++
    for j:=w-1;j>0;j-- {
      if a[i][j]%2 == 1 {
        sets = append(sets,Set{Point{i+1,j+1},Point{i+1,j}})
        a[i][j-1]++
      }
    }
    if i == h-1 { break }
    if a[i][0]%2 == 1 {
      sets = append(sets,Set{Point{i+1,0},Point{i+2,0}})
      a[i+1][0]++
    }
    i++
  }
  fmt.Println(len(sets))
  for i:=0;i<len(sets);i++ {
    fmt.Println(sets[i].p1.x,sets[i].p1.y,sets[i].p2.x,sets[i].p2.y)
  }
}

type Point struct {
  x int
  y int
}
type Set struct {
  p1 Point
  p2 Point
}
type Sets []Set