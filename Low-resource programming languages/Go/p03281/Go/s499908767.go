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

	ans := 0
	for i := 1; i <= n; i += 2 {
		if countDivisor(i) == 8 {
			ans++
		}
	}
	fmt.Println(ans)
}

func countDivisor(n int) int {
	count := 0
	for i := 1; i <= n; i++ {
		if n%i == 0 {
			count++
		}
	}
	return count
}
