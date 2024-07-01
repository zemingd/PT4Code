package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	inputs := scanIntNums()
	N := inputs[0]
	A := inputs[1]
	B := inputs[2]

	rep := N / (A + B)
	rem := N % (A + B)

	var result int
	if rep == 0 {
		if N < A {
			result = N
		} else {
			result = A
		}
	} else {
		if rem < A {
			result = A*rep + rem
		} else {
			result = A*rep + A
		}
	}
	fmt.Println(result)
}

func scanIntNums() (nums []int) {
	sc.Scan()
	numString := strings.Split(sc.Text(), " ")

	nums = make([]int, len(numString))
	var err error

	for i := 0; i < len(nums); i++ {
		nums[i], err = strconv.Atoi(numString[i])
		if err != nil {
			panic(err)
		}
	}
	return nums
}
