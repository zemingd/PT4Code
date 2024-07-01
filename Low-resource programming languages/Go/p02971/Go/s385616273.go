package main

import (
  "bufio"
  "fmt"
  "os"
  "strconv"
  "sort"
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
  	
  for i := 0; i <= n-1; i++ {
    target := as[i]
    
    astmp := make([]int, len(as))
    copy(astmp, as)
    
    sort.Ints(astmp)
   
    max := astmp[len(astmp)-1]
    nextMax := astmp[len(astmp)-2]
    
    if max == target {
      fmt.Println(nextMax)
    } else {
      fmt.Println(max)
    }
  }
}