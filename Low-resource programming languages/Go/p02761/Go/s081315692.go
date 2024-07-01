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
	N := inputs[0] // length
	M := inputs[1] // num of condition

	conditions := make([][]int, M)

	for i := 0; i < M; i++ {
		conditions[i] = scanIntNums()
		// check conditionis valid
		//result = buildNum(result, inputs)
	}
	fmt.Println(buildNum(N, conditions))
}

func buildNum(length int, conditions [][]int) int {
	cmap := make(map[int]int, 3)

	// check conditions
	for _, condition := range conditions {
		if 4-condition[0] > length {
			return -1
		}

		if val, ok := cmap[condition[0]]; !ok || val == condition[1] {
			cmap[condition[0]] = condition[1]
			continue
		} else {
			return -1
		}
	}

	// build num
	var result int
	for key, val := range cmap {
		if key == 1 {
			result += 100 * val
		} else if key == 2 {
			result += 10 * val
		} else {
			result += val
		}
	}

	if result < 100 {
		if val, ok := cmap[1]; ok && val == 0 {
			return -1
		}
	}
	if result < 10 {
		if val, ok := cmap[2]; ok && val == 0 {
			return -1
		}
	}

	if length == 3 && result < 100 {
		result += 100
	}
	if length == 2 && result < 10 {
		result += 10
	}

	return result
}

func scanIntNum() (num int) {
	sc.Scan()

	num, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return num
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
