package main

import(
	"fmt"
	"math"
)

func main() {
	var (
		t,a float64
		n int
	)
	fmt.Scan(&n,&t,&a)
	
	points := make([]float64,n)
	
	mostNearPoint := 0
	var diffavg float64= 1000
	for i := 0; i < n; i++ {
		fmt.Scan(&points[i])
		avgtmp := t - points[i] * 0.006
		if math.Abs(a - avgtmp) < diffavg {
			mostNearPoint = i + 1
			diffavg = math.Abs(a - avgtmp)
		}
	}
	
	fmt.Println(mostNearPoint)
}