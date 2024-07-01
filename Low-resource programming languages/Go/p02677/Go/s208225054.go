package main

import "fmt"
import "math"

func main() {
	var A, B, H, M float64
	var theta float64 = 0
	var temp float64
	fmt.Scan(&A,&B,&H,&M)
	temp = 60*H+M
	theta = temp/720 - M/60

	fmt.Println(math.Sqrt(A*A+B*B-2*A*B*(math.Cos(2*math.Pi*theta))))
}