package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() int {
	sc.Scan()
	num, _ := strconv.Atoi(sc.Text())
	return num
}

func main() {
	var f = false
	N := nextLine()

	for i := 1; i < 10; i++ {
		for j := i; j < 10; j++ {
			if N == i*j {
				f = true
				goto OUT
			}
		}
	}
OUT:

	if f {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}
