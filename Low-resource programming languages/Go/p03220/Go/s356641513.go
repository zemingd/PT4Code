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
	const maxCapacity = 512 * 1024
	buf := make([]byte, maxCapacity)
	scanner.Buffer(buf, maxCapacity)

	var n, t, a, ans, best float64
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &n)
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &t, &a)

	var x int
	best = 10000000000.0
	scanner.Scan()
	for i, v := range strings.Split(scanner.Text(), " ") {
		x, _ = strconv.Atoi(v)
		if math.Abs(a-(t-float64(x)*0.006)) < best {
			best = math.Abs(a - (t - float64(x)*0.006))
			ans = float64(i)
		}
	}
	fmt.Println(ans + 1)
}
