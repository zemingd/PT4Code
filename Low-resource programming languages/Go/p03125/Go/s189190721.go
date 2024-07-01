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

// A
func main() {
	inputs := splitWithInt(gets())
	A, B := inputs[0], inputs[1]
	if B % A == 0 {
		fmt.Println(A + B)
	} else {
		fmt.Println(B - A)
	}
}
