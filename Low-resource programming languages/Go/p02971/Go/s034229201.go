package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
    sc.Scan()
    return sc.Text()
}

func main() {
  text := nextLine()
  
  n, _ := strconv.Atoi(text)

  as := []int{}  
  for i := 1; i <= n; i++ {
    t := nextLine()
    
    a, _ := strconv.Atoi(t)
    as = append(as, a)
  }
  	
  for i := 0; i < n; i++ {
	astmp := make([]int, len(as))
	copy(astmp, as)
    
    fmt.Println(max(astmp, i))
  }
}

func max(as []int, index int) int {
  var max int
  for i, a := range as {
    if index == i {
      continue
    }
    if max < a {
      max = a
    }
  }
  return max
}