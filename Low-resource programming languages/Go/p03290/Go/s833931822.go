//  ABC104_C_AllGreen.go
// 

package main

import (
    "fmt"
    //"strings"
)

var pc [][]int
var pat []int
var min int

func calPoint(point int,i int ,D int ,G int,correct int,min *int) {
    var basePoint int

    basePoint = (i+1)*100

    if i > D - 2 {
        for j := 0; j < pc[i][0]; j++{
            if point+basePoint*j >= G && correct+j < *min {
                //fmt.Println(i,"-",j,":",point+basePoint*j,"correct:",correct+j)
               *min = correct+j
            }
        }
        if point+basePoint*pc[i][0]+pc[i][1] >= G && correct+pc[i][0] < *min {
            //fmt.Println(i,"-",pc[i][0],":",point+basePoint*pc[i][0]+pc[i][1],"correct:",correct+pc[i][0])
            *min = correct+pc[i][0]
        }
        //fmt.Println()
        return

    } else {

        for j := 0 ; j < pc[i][0] ; j++ {
            //fmt.Print(i," - ",j,":")
            calPoint(point+basePoint*j,i+1,D,G,correct+j,min)
        }
        //fmt.Print(i," - ",pc[i][0],":")
        calPoint(point+basePoint*pc[i][0]+pc[i][1],i+1,D,G,correct+pc[i][0],min)

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

    point = 0
    correct = 0

    calPoint(point,0,D,G,correct,&min)

    fmt.Println(min)
}


