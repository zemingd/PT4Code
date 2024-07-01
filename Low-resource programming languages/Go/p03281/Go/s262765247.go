package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func readInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	n := readInt()

	ans := make([]int, 0)
	for i := 1; i <= n; i++ {
		if i%2 == 0 {
			continue
		}
		count := 0
		for j := 1; j <= i; j++ {
			if n%j == 0 {
				count++
			}
		}
		if count == 8 {
			ans = append(ans, i)
		}
	}
	fmt.Println(len(ans))
}
