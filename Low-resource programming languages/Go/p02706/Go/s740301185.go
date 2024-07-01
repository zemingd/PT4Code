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
	var summerDay, m int = nextInt(), nextInt()
	var homeWorkAllCosts int
	for i := 0; i <= m; i++ {
		homeWorkAllCosts += nextInt()
	}
	if summerDay < homeWorkAllCosts {
		fmt.Println("-1")
		return
	} else {
		fmt.Println(summerDay - homeWorkAllCosts)
		return
	}
}
