package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var n int
	fmt.Scanf("%d", &n)

	sc.Split(bufio.ScanWords)

	var a []int

	for i := 1; i <= n; i++ {
		a = append(a, nextInt())
	}

	var sum = 0
	for i := 1; i <= n-1; i++ {
		for j := i + 1; j <= n; j++ {
			sum += a[i-1] ^ a[j-1]
		}
	}

	fmt.Println(sum % 1000000007)

}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}