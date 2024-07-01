package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func Scanner() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	buf := make([]byte, 0)
	sc.Buffer(buf, 1000000007)
	sc.Split(bufio.ScanWords)
	n, _ := strconv.Atoi(Scanner())
	ans := 0
	for i := 1; i <= n; i++ {
		if i%3 != 0 && i%5 != 0 {
			ans += i
		}
	}
	fmt.Println(ans)
}
