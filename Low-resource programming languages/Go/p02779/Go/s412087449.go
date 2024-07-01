package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	const maxWord = (1 << 30)
	buf := []byte{}
	sc.Buffer(buf, maxWord)
	sc.Split(bufio.ScanWords)
}

func input() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	n, _ := strconv.Atoi(input())
	a := make([]int, n)
	for i := 0; i < n; i++ {
		a[i], _ = strconv.Atoi(input())
	}

	ans := "YES"
	nums := map[int]bool{}
	for i := 0; i < n; i++ {
		_, exists := nums[a[i]]
		if exists {
			ans = "NO"
			break
		}
		nums[a[i]] = true
	}
	fmt.Println(ans)
}
