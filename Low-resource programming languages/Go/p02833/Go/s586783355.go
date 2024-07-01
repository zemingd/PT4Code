package main

import (
	"bufio"
	"os"
	"strconv"
)

func function1(n int) int {

	ans := 0
	k := 10
	for n >= k {
		ans += n / k
		k *= 5
	}
	return ans

}

func main() {

	var ans, n int

	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	buf := make([]byte, 10000)
	sc.Buffer(buf, 100000)

	sc.Scan()
	t := sc.Text()
	n, _ = strconv.Atoi(t)

	ans = 0

	if n%2 == 0 {
		ans = function1(n)

	}
	println(ans)

}
