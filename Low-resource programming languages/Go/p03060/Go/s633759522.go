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
	v := scanNums(n)
	c := scanNums(n)
	m := 0
	for i := 0; i < n; i++ {
		if v[i]-c[i] > 0 {
			m += v[i] - c[i]
		}
	}
	fmt.Println(m)
}
