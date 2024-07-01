package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	var str string
	fmt.Sscanf(scanner.Text(), "%s", &str)
	chars := strings.Split(str, "")

	ans := math.MaxInt64
	for i := 0; i < len(chars)-2; i++ {
		c := chars[i : i+3]
		v, _ := strconv.Atoi(strings.Join(c, ""))

		diff := v - 753
		if diff < 0 {
			diff = -diff
		}
		ans = min(ans, diff)
	}
	fmt.Println(ans)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
