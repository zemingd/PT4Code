package main

import (
	"fmt"
	"math"
	"strconv"
)

func main() {
	var S string
	fmt.Scan(&S)

	var array []int

	count := 0

	for i := 0; i < len(S); i++ {
		num, _ := strconv.Atoi(string(S[i]))
		array = append(array, num)
	}

	length := len(array)

	for i := 0; i < length - 1; i++ {
		for j := i + 1; j < length; j++ {
			if CutOutNumFromArray(array, i, j) % 2019 == 0{
				count++
			}
		}
	}

	fmt.Println(count)
}

func CutOutNumFromArray(array []int, start int, end int) int {

	ans := 0

	for i := start; i <= end; i++ {
		ans = ans + array[i]*int(math.Pow10(end-i))
	}

	return ans
}
