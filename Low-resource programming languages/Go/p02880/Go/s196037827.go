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

func main() {
	n := nextInt()

	ans := "No"
	for i := 1; i <= 9; i++ {
		for j := 1; j <= 9; j++ {
			if i*j == n {
				ans = "Yes"
			}
		}
	}

	fmt.Println(ans)
}
