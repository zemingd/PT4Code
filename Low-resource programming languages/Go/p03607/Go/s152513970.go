package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

func main() {
	scanner.Split(bufio.ScanWords)

	n := nextInt()
	m := make(map[int]int)
	for i := 0; i < n; i++ {
		m[nextInt()]++
	}

	ans := 0
	for _, v := range m {
		if v%2 == 1 {
			ans++
		}
	}
	fmt.Println(ans)
}

func next() string {
	scanner.Scan()
	return scanner.Text()
}
func nextInt() int {
	i, err := strconv.Atoi(next())
	if err != nil {
		fmt.Println(err)
	}
	return i
}
