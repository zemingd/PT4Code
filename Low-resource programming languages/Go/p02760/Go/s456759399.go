package main


import (
  "fmt"
)

func main(){
  var a [3][3]int
  var b [3][3]bool
  var N int
  
  for i := 0; i < 3; i++ {
  	fmt.Scanf("%d %d %d\n", &a[i][0], &a[i][1], &a[i][2])
  }
  
  fmt.Scanf("%d\n", &N)
  
  for i := 0; i < N; i++ {
    var input int
    fmt.Scanf("%d\n", &input)
    for j := 0; j < 3; j++ {
      for k := 0; k < 3; k++ {
        if a[j][k] == input {
          b[j][k] = true
        }
      }
    }
  }
  var ret bool = false
  for i := 0; i < 3; i++ {
    if b[i][0] && b[i][1] && b[i][2]{
      ret = true
      break
    }
    if b[0][i] && b[1][i] && b[2][i] {
      ret = true
      break
    }
  }
  if b[0][0] && b[1][1] && b[2][2] {
    ret = true
  }
  if b[0][2] && b[1][1] && b[2][0] {
    ret = true
  }
  if ret {
	  fmt.Println("Yes")
  }else{
    fmt.Println("No")
  }
}