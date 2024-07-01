package main

import (
	"fmt"
  //"sort"
	//"strconv"
)

func main() {
  var N int
  A := make([][]int, 3)
  for i:=0; i<3; i++{
    A[i]=make([]int,3)
  }
  fmt.Scanf("%d %d %d",&A[0][0],&A[0][1],&A[0][2])
  fmt.Scanf("%d %d %d",&A[1][0],&A[1][1],&A[1][2])
  fmt.Scanf("%d %d %d",&A[2][0],&A[2][1],&A[2][2])
  fmt.Scanf("%d",&N);
  b:=make([]int, N)
  for i:=0; i<N; i++{
    fmt.Scanf("%d",&b[i]);
    for j:=0;j<3;j++{
      for k:=0;k<3;k++{
        if b[i]==A[j][k]{
          A[j][k]=0
        }
      }
    }
  }
  if A[0][0]==A[0][1]&&A[0][1]==A[0][2]||A[1][0]==A[1][1]&&A[1][1]==A[1][2]||A[2][0]==A[2][1]&&A[2][1]==A[2][2]||A[0][0]==A[1][1]&&A[1][1]==A[2][2]||A[0][2]==A[1][1]&&A[1][1]==A[2][0]||A[0][0]==A[1][0]&&A[1][0]==A[2][0]||A[0][1]==A[1][1]&&A[1][1]==A[2][1]||A[0][2]==A[1][2]&&A[1][2]==A[2][2]{
    fmt.Print("Yes")
  }else{
      fmt.Print("No")
  }

}