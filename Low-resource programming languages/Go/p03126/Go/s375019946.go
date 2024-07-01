package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func gets() string {
	sc.Scan()
	return sc.Text()
}

func toInt(value string) int {
	num, _ := strconv.Atoi(value)
	return num
}

func splitWithInt(value string) []int {
	vals := strings.Split(value, " ")
	nums := make([]int, len(vals))
	for index, elem := range vals {
		nums[index] = toInt(elem)
	}
	return nums
}

// B
func main() {
	var inputs []int
	inputs = splitWithInt(gets())
	N, M := inputs[0], inputs[1]
	countArray := make([]int, M)
	for i:= 0; i < N; i++ {
		inputs = splitWithInt(gets())[1:]
		for _, elem := range inputs {
			countArray[elem - 1]++
		}
	}

	countKinds := 0
	for _, elem := range countArray {
		if elem == N { countKinds++ }
	}

	fmt.Println(countKinds)
}
