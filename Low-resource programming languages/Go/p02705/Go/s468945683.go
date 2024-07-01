package main

import "fmt"
import "math"

func main(){
	var R float64

	fmt.Scan(&R)
	ans := R * 2. * math.Pi
	fmt.Println(ans)
}