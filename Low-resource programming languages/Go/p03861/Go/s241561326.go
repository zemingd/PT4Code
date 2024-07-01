package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	sc.Scan()
	line := sc.Text()
	numbers := strings.Split(line, " ")
	a, _ := strconv.ParseUint(numbers[0], 10, 64)
	b, _ := strconv.ParseUint(numbers[1], 10, 64)
	x, _ := strconv.ParseUint(numbers[2], 10, 64)
	// x の倍数で最も小さいa以上の値
	minXMulti := x * uint64(a/x)
	// x の倍数で最も大きいb以下の値
	maxXMulti := x * uint64(b/x)
	count := 1 + ((maxXMulti - minXMulti) / x)
	fmt.Println(count)
}
