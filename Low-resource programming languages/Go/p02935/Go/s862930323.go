// package main

// import "fmt"

// func main() {
// 	var n int
// 	fmt.Scan(&n)
// 	num1 := 0.0
// 	for i := 1; i <= n; i++ {
// 		var ai float64
// 		fmt.Scan(&ai)
// 		num1 += 1.0 / ai
// 	}
// 	fmt.Println(1.0 / num1)
// }

package main

import (
	"fmt"
	"sort"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	inputs := []string{}
	for i := 1; i <= n; i++ {
		var vi string
		fmt.Scan(&vi)
		inputs = append(inputs, vi)
		fmt.Println(inputs)
	}
	sort.Slice(inputs, func(i, j int) bool {
		num_i, _ := strconv.Atoi(inputs[i])
		num_j, _ := strconv.Atoi(inputs[j])
		return num_i < num_j
	})
	fmt.Printf("after  : %v\n", inputs)
	for i := 0; i < n; i++ {
		num2 := 0
		f := strconv.ParseFloat(inputs[i], 64)
		g := strconv.ParseFloat(inputs[i+1], 64)
		if i == 0 {
			num2 = (f + g) / 2.0
		} else if i == 1 {
			continue
		} else {
			num2 = num2/2.0 + inputs[i]/2.0
		}

		fmt.Println(num2)

	}
}
