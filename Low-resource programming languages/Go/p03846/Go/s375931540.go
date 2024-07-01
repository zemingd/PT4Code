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
func NextStringArray() []string {
  return strings.Split(NextLine()," ")
}
func NextIntArray() []int {
  var s []string = NextStringArray()
  var n int = len(s)
  var a []int = make([]int,n)
  for i:=0;i<n;i++ {
    a[i],_ = strconv.Atoi(s[i])
  }
  return a
}

func main() {
  var n,m int
  var a,b []int
  n,_ = strconv.Atoi(NextLine())
  a = NextIntArray()
  if n%2 == 0 {
    m = n/2
    b = make([]int,m)
    for i:=0;i<n;i++ {
      if a[i]%2 != 1 {
        fmt.Println(0)
        os.Exit(0)
      }
      b[(a[i]-1)/2]++
    }
    for i:=0;i<m;i++ {
      if b[i] != 2 {
        fmt.Println(0)
        os.Exit(0)
      }
    }
  } else {
    m = (n-1)/2
    b = make([]int,m+1)
    for i:=0;i<n;i++ {
      if a[i]%2 != 0 {
        fmt.Println(0)
        os.Exit(0)
      }
      b[a[i]/2]++
    }
    if b[0] != 1 {
      fmt.Println(0)
      os.Exit(0)
    }
    for i:=1;i<m+1;i++ {
      if b[i] != 2 {
        fmt.Println(0)
        os.Exit(0)
      }
    }
  }
  const mod int64 = 1000000007
  var ans int64 = 1
  for i:=0;i<m;i++ {
    ans = (ans*2)%mod
  }
  fmt.Println(ans)
}