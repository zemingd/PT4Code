package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func readLine() string {
	if sc.Scan() {
		return sc.Text()
	}
	panic("readline error")
}

func main() {
	mod := 1000000007
	sum := 0

	N, _ := strconv.Atoi(readLine())
	A := make([]int, N)

	a := strings.Split(readLine(), " ")
	for i := range A {
		A[i], _ = strconv.Atoi(a[i])
		sum += A[i]
		sum %= mod
	}

	ans := 0
	for i := range A {
		sum -= A[i]
		if sum < 0 {
			sum += mod
		}

		ans += A[i] * sum
		ans %= mod
	}

	fmt.Println(ans)
}
