package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	var i int
	if sc.Scan() {
		if num, err := strconv.Atoi(sc.Text()); err == nil {
			i = num
		}
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	var nums = map[int]int{}
	for i := 0; i < 3; i++ {
		num := nextInt()
		nums[num]++
	}
	for _, v := range nums {
		if v == 2 {
			fmt.Println("Yes")
			return
		}
	}
	fmt.Println("No")
}
