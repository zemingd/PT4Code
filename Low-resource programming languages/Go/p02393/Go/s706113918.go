package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc = bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	nums := make([]int, 3)
	for i := 0; i < 3; i++ {
		nums[i] = nextInt()
	}
	for i := 0; i < 2; i++ {
		if nums[i] > nums[i+1] {
			*&nums[i+1], *&nums[i] = *&nums[i], *&nums[i+1]
		}
	}
	i := 0
	if nums[i] > nums[i+1] {
		*&nums[i+1], *&nums[i] = *&nums[i], *&nums[i+1]
	}
	fmt.Println(nums[0], nums[1], nums[2])

}

