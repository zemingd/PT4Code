package main

import (
	"fmt"
	"sort"
)

func main() {
	var N int
	fmt.Scanf("%d", &N)
	values := make([]float64, N)
	for i := 0; i < N; i++ {
		fmt.Scanf("%f", &values[i])
	}

	sort.Sort(sort.Float64Slice(values))
	var generated float64
	//fmt.Println(values)
	for i := 0; i < N-1; i++ {
		generated = (values[i] + values[i+1]) / 2
		values[i+1] = generated
	}

	fmt.Println(generated)
}
