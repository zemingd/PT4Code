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
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func main() {
	sc.Split(bufio.ScanWords)
	n := nextInt()
	var count int
	var x [100]int
	for i := 0; i < n; i++ {
		// x = append(x, nextInt())
		x[i] = nextInt()
	}

	for len := 0; len < n; len++ {
		flag := true
		BaseNumber := x[len]
		for j := 0; j < len; j++ {
			if BaseNumber > x[j] {
				flag = false
			}
		}
		if flag == true {
			count++
		}
	}
	fmt.Println(count)
}
