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
	var num int
	for i := 0; i < len; i++ {
		num = nextInt()
		nums = append(nums, num)
	}
	return
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	x := nextInt()
	l := scanNums(n)
	length := 0
	bound := 1
	for i := 0; i < n; i++ {
		length += l[i]
		if length <= x {
			bound++
		} else {
			fmt.Println(bound)
			break
		}
		fmt.Println(bound)
	}
}
