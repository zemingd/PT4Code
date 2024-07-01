package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	n := 0
	if sc.Scan() {
		num, _ := strconv.Atoi(sc.Text())
		n = num
	}
	btns := []int{}
	for i := 0; i < n; i++ {
		if sc.Scan() {
			num, _ := strconv.Atoi(sc.Text())
			btns = append(btns, num)
		}
	}

	next := 1
	count := 0
	for _, _ = range btns {
		next = btns[next-1]
		count++

		if next == 2 {
			break
		} else if count == len(btns) {
			count = -1
			break
		}
	}

	fmt.Println(count)
}
