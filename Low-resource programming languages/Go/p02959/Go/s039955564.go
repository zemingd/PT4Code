package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func parseInt(s string) int {
	i, _ := strconv.Atoi(s)
	return i
}

func createNums(ary string) (nums []int) {
	for _, v := range strings.Split(ary, " ") {
		nums = append(nums, parseInt(v))
	}
	return nums
}

func main() {
	n := bufio.NewScanner(os.Stdin)
	n.Scan()

	n.Scan()
	numsA := createNums(n.Text())

	n.Scan()
	numsB := createNums(n.Text())

	count := 0
	for i, v := range numsB {
		if numsA[i] >= v {
			count += v
		} else {
			
			if numsA[i]+numsA[i+1] >= v {
				count += v
				numsA[i+1] = numsA[i] + numsA[i+1] - v
			} else {
				count += numsA[i] + numsA[i+1]
				numsA[i+1] = 0
			}
		}
	}
	fmt.Println(count)
}
