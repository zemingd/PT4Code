package main

import (
	"fmt"
)

func main() {
	var a, b, c, d int
	fmt.Scanf("%d %d %d %d", &a, &b, &c, &d)

	var arrX [2]int
	arrX[0] = a
	arrX[1] = b

	var arrY [2]int
	arrY[0] = c
	arrY[1] = d

	//var x, y int
	var tmp int
	tmp = arrX[0] * arrY[0]
	for i := 0; i < 2; i++ {
		for j := 0; j < 2; j++ {
			if (arrX[i] * arrY[j]) > tmp {
				tmp = arrX[i] * arrY[j]
			}
		}
	}
	fmt.Println(tmp)
}
