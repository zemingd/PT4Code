package main

import "fmt"

func main() {
  var numPerson, numRule int
  fmt.Scanf("%d %d\n", &numPerson, &numRule)
  
  Rule := make([][]int, numPerson)
  for i := 0; i < numPerson; i++ {
    Rule[i] = make([]int, numPerson)
    for j := 0; j < numPerson; j++ {
      Rule[i][j] = 0
    }
  }
  for i := 0; i < numRule; i++ {
    var a, b int
    fmt.Scanf("%d %d\n", &a, &b)
    Rule[a-1][b-1] = 1
    Rule[b-1][a-1] = 1
  }
  selected := make([]int, numPerson)
  for i := 0; i < numPerson; i++ {
    selected[i] = 0
  }
  for i := 0; i < numPerson; i++ {
    selected[i] = 1
    for j := i+1; j < numPerson; j++ {
      if selected[j] == 1 {
        continue
      }
      
    }
  }
  
  fmt.Println(0)
}