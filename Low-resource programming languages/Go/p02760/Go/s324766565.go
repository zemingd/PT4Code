package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)
var patterns = []struct {
	pos [6]int
}{
	{[6]int{0, 0, 0, 1, 0, 2}},
	{[6]int{1, 0, 1, 1, 1, 2}},
	{[6]int{2, 0, 2, 1, 2, 2}},
	{[6]int{0, 0, 1, 0, 2, 0}},
	{[6]int{1, 0, 1, 1, 1, 2}},
	{[6]int{2, 0, 2, 1, 2, 2}},
	{[6]int{0, 0, 1, 1, 2, 2}},
	{[6]int{0, 2, 1, 1, 2, 0}},
}

func main() {
	var bingo [3][3]int
	// scan card
	bingo[0] = scanIntNums()
	bingo[1] = scanIntNums()
	bingo[2] = scanIntNums()

	// scan bingo
	inputlines := scanInt100Lines()

	if checkResult(bingo, inputlines) {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func checkResult(bingo [3][3]int, nums []int) bool {
	for _, pattern := range patterns {
		if contain(bingo[pattern.pos[0]][pattern.pos[1]], nums) &&
			contain(bingo[pattern.pos[2]][pattern.pos[3]], nums) &&
			contain(bingo[pattern.pos[4]][pattern.pos[5]], nums) {
			return true
		}
	}
	return false
}

func contain(num int, array []int) bool {
	for _, v := range array {
		if v == num {
			return true
		}
	}
	return false
}

func scanIntNum() (num int) {
	sc.Scan()

	num, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return num
}

func scanInt100Lines() []int {
	var array []int

	for sc.Scan() {
		num, e := strconv.Atoi(sc.Text())
		if e != nil {
			break
		}
		array = append(array, num)
	}
	return array
}

func scanIntNums() (nums [3]int) {
	sc.Scan()
	numString := strings.Split(sc.Text(), " ")

	var err error

	for i := 0; i < 3; i++ {
		nums[i], err = strconv.Atoi(numString[i])
		if err != nil {
			panic(err)
		}
	}
	return nums
}
