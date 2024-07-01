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
	sc.Scan()
	S := sc.Text()
	if S == "Sunny" {
		fmt.Print("Cloudy")
	}
	 if S == "Cloudy"{
		fmt.Print("Rainy")
	}
	 if S == "Rainy"{
		fmt.Print("Sunny")
	}
}
