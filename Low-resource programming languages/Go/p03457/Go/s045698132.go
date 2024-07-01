package main

import (
	"fmt"
	"math"
)

func Traveling(array [][3]int,N int) string{
	for i:=1; i < N+1 ; i++ {
		distx := int(math.Abs(float64(array[i][1] - array[i-1][1])))
		disty := int(math.Abs(float64(array[i][2] - array[i-1][2])))
		time  := array[i][0] - array[i-1][0]
		if (time - distx - disty) % 2 != 0  ||  (time - distx - disty) < 0 {
			return "No"
		}
	}
	return "Yes"
}

func main() {
	var N int
	fmt.Scan(&N)
        array := [][3]int{{0,0,0}}

        for i:=0; i < N; i ++ {
		var t int
		var x int
		var y int
                fmt.Scan(&t)
                fmt.Scan(&x)
                fmt.Scan(&y)
		locate:= [3] int{t,x,y}
                array = append(array,locate)

        }
        fmt.Println(Traveling(array,N))

}