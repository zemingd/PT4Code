//  ABC104_C_AllGreen.go
// 

package main

import (
    "fmt"
    //"strings"
)

var pc [][]int
var pointMatrix [][]int
var rpointMatrix [][]int
var min int

func calPoint(point int,i int ,D int ,G int,correct int,min *int) {

  if i == D - 1 {
      for j := 0; j < len(rpointMatrix[i]); j++{
          //fmt.Println(j,":",point+pointMatrix[i][j],"correct:",correct+j)
          if point+rpointMatrix[i][j] >= G {
            if correct+j <= *min{
              *min = correct+j
           }
          }
      }
      return

  } else {

     for j := 0 ; j < len(rpointMatrix[i]) ; j++ {
       //fmt.Print(j,"-")
        if correct+j >= *min {
           return
        }

        if point+rpointMatrix[i][j] >= G  {
          if correct +j <= *min {
            *min = correct + j
          }
          return
        }
        calPoint(point+rpointMatrix[i][j],i+1,D,G,correct+j,min)
     }
  }
}

func main() {
  var D int
  var G int
  var P int
  var C int
  var point int
  var correct int

  fmt.Scan(&D,&G)

  pc = make([][]int,D)

  for i := 0; i < D; i++ {
     pc[i] = make([]int,2)
  }

  min = 1

  for i := 0 ; i < D ; i++ {
    fmt.Scan(&P,&C)
    pc[i][0] = P
    pc[i][1] = C
    min *= P

    }

  //fmt.Println(pc)

  pointMatrix = make([][]int,D)

  for i := 0; i < D; i++ {
    pointMatrix[i] = make([]int,pc[i][0]+1)
  }

  for i :=0; i < D; i++ {
    for j :=0 ; j <= pc[i][0]; j++ {
      pointMatrix[i][j] = j * (i+1) * 100
    }
      pointMatrix[i][pc[i][0]] += pc[i][1]
   }

  rpointMatrix = make([][]int,D)

  for i := 0; i < D; i++ {
    rpointMatrix[i] = make([] int,pc[D-1-i][0]+1)
    rpointMatrix[i] = pointMatrix[D-1-i]
  }



  //fmt.Println(pointMatrix)
  //fmt.Println(rpointMatrix)

  point = 0
  correct = 0

  calPoint(point,0,D,G,correct,&min)

  //fmt.Println(point,correct,min)
  fmt.Println(min)
}


