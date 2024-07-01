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
	var sum int
	i := scanIntNums()
	H := i[0]
	i2 := scanIntNums()

	for _, num := range i2 {
		sum += num
	}

	if sum >= H {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}

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