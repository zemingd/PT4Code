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
	number, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return number
}

func main() {
	var n int
	fmt.Scan(&n)

	numbers := make([]int, n)

	sc.Split(bufio.ScanWords)
	numbers[0] = nextInt()

	flag := true

LABEL1:
	for i := 0; i < n-1; i++ {
		var a int
		a = nextInt()
		for j := 0; j < i; j++ {
			if a == numbers[j] {
				fmt.Println("NO")
				flag = false
				break LABEL1
			}
		}
		numbers[i+1] = a
	}

	if flag {
		fmt.Println("YES")
	}
}
