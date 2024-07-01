package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
)

const n = 3
var sc = bufio.NewScanner(os.Stdin)

func main()  {
	max := math.MinInt64
	maxIndex := 0
	v := make([]int,n)
	for i := 0; i < n; i++ {
		fmt.Scan(&v[i])
	}


	for i := 0; i < n; i++ {
		if max < v[i]{
			max = v[i]
			maxIndex = i
		}
	}

	result := 0
	for i := 0; i < n; i++ {
		if i == maxIndex {
			result += 10 * v[i]
			continue
		}
		result += v[i]
	}
	fmt.Println(result)

}

