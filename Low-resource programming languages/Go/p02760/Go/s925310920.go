package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Split(bufio.ScanWords)
	ret := make([]int, 9)
	for i := 0; i < 9; i++ {
		ret[i] = nextInt()
	}
	n := nextInt()
	game := make([]int, n)
	for i := 0; i < n; i++ {
		game[i] = nextInt()
	}

	result := "No"
	hit := 0
	for i, r := range ret {
		for j, g := range game {
			if r == g {
				hit += i + j
			}
		}
	}
	if hit != 0 && hit != 3 && hit%3 == 0 {
		result = "Yes"
	}
	fmt.Println(result)
}

func next() string {
	sc.Scan()
	return sc.Text()
}
func nextInt() int {
	a, _ := strconv.Atoi(next())
	return a
}
