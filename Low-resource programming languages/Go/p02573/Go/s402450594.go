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
  var maxNumCluster = 1
  for i := 0; i < numPerson; i++ {
    if selected[i] == 1 {
      continue
    }
    
    selected[i] = 1
    cnt := 1;
    for j := i+1; j < numPerson; j++ {
      if selected[j] == 1 {
        continue
      }
      
      if Rule[i][j] == 1 {
        cnt++
        selected[j] = 1
        for k := j+1; k < numPerson; k++ {
          if Rule[j][k] == 1 {
            Rule[i][k] = 1
            Rule[k][i] = 1
          }
        }
      }
    }
    
    if cnt > maxNumCluster {
      maxNumCluster = cnt
    }
  }
  
  fmt.Println(maxNumCluster)
}