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
	p := scanNums(n)
	count := 0
	for i := 0; i < n-2; i++ {
		if p[i] < p[i+1] {
			if p[i+1] <= p[i+2] {
				count += 1
			} else if p[i+2] == p[i] {
				count += 1
			}
		} else {
			if p[i+1] > p[i+2] {
				count += 1
			}
		}
	}
	fmt.Println(count)
}
