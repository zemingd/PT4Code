package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var scanner = bufio.NewScanner(os.Stdin)

const MaxBufferSize = 2*100000000 + 1

func NextStr() string {
	scanner.Scan()
	return scanner.Text()
}

func NextInt() int {
	i, _ := strconv.Atoi(NextStr())
	return i
}

func main() {
	buf := make([]byte, 10000)
	scanner.Buffer(buf, MaxBufferSize)
	scanner.Split(bufio.ScanWords)
	n := NextInt()

	var ans int

	pre := -1
	for i := 0; i < n; i++ {
		next := NextInt()
		step := 0
		if pre > next {
			step = pre - next
		}
		ans += step
		pre = next + step
	}
	fmt.Println(ans)
}
