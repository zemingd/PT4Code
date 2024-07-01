package main

import (
  "fmt"
  "bufio"
  "os"
  "strconv"
  "strings"
  
)

func main() {
  a := nextIntVec()
  b := nextIntVec()
  c := nextIntVec()
  
  if a[0] == b[0] {
      fmt.Println("YES")
      os.Exit(0)
  }
  if a[1] <= b[1] {
      fmt.Println("NO")
      os.Exit(0)
  }
  s := b[0] - a[0]
  d := a[1] - b[1]
  if s % d != 0 {
      fmt.Println("NO")
      os.Exit(0)
  }
  if s / d <= c[0] {
      fmt.Println("YES")
  } else {
      fmt.Println("NO")
  }
  
}
/*----------標準入力用の関数----------*/
var reader = bufio.NewReaderSize(os.Stdin, 1000000)
func nextLine() string {
    buffer := make([]byte, 0)
    for true {
    	line, isPrefix, _ := reader.ReadLine()
       	buffer = append(buffer, line...)
	    if !isPrefix {
	    	break
	    }
    }
    return string(buffer)
}
    
func nextIntVec() []int {
	L := strings.Split(nextLine(), " ")
	A := make([]int, len(L))
	for i := range L {
		A[i], _ = strconv.Atoi(L[i])
	}
	return A
}