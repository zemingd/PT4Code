package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func scanNums(len int) (nums []int) {
	for i := 0; i < len; i++ {
		nums = append(nums, nextInt())
	}
	return
}

func min(num1, num2 int) int {
	if num1 < num2 {
		return num1
	}
	return num2
}

func max(num1, num2 int) int {
	if num1 < num2 {
		return num2
	}
	return num1
}

func main() {
	sc.Split(bufio.ScanWords)
	N := nextInt()
	sumNumber := 0
	secondNumber := 0
	B := scanNums(N - 1)
	sumNumber = B[0] * 2
	for i := 2; i < N-1; i++ {
		secondNumber = min(B[i], B[i-1])
		sumNumber += secondNumber
	}

	sumNumber += B[N-2]

	fmt.Println(sumNumber)
}
