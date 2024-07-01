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
	a := scanNums(n)
	max1 := a[0]
	max2 := 0
	index1 := 0
	for i := 0; i < n; i++ {
		if i == 0 {
			max1 = a[i]
			index1 = 0
		} else {
			if max1 <= a[i] {
				max2 = max1
				max1 = a[i]
				index1 = i
			} else if max1 > a[i] && max2 <= a[i] {
				max2 = a[i]
			}
		}
	}
	for i := 0; i < n; i++ {
		if i == index1 {
			fmt.Println(max2)
		} else {
			fmt.Println(max1)
		}
	}
}
