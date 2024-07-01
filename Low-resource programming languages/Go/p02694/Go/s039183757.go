package main

import (
	"fmt"
	"math"
)

func main() {
	var N float64
	fmt.Scanf("%f", &N)
	i := 100.0
	cnt := 0
	for ; i < N; cnt++ {
		i = math.Floor(i * 1.01)
	}
	fmt.Println(cnt)
}