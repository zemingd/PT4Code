package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

const div = 1000000007

func NextStr() string {
	scanner.Scan()
	return scanner.Text()
}

func NextInt() int {
	i, _ := strconv.Atoi(NextStr())
	return i
}

func main() {
	scanner.Split(bufio.ScanWords)
	n := NextInt()
	A := make([]int, n)
	var ans int
	for i := 0; i < n; i++ {
		A[i] = NextInt()
		for j := 0; j < i; j++ {
			ans += (A[i] * A[j]) % div
		}
	}
	ans %= div
	fmt.Println(ans)
}
