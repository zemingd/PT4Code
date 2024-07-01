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
  sortas := []int{}
  for i := 1; i <= n; i++ {
    t := nextLine()
    a, _ := strconv.Atoi(t)
    as = append(as, a)
    sortas = append(sortas, a)
  }
  	
  for i := 0; i <= n-1; i++ {
    target := as[i]
    
    sort.Ints(sortas)
    max := sortas[len(sortas)-1]
    nextMax := sortas[len(sortas)-2]
    
    if max == target {
      fmt.Println(nextMax)
    } else {
      fmt.Println(max)
    }
  }
}