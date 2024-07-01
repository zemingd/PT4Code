package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func count(n int) int {
	res := 0
	l := int(math.Trunc(math.Sqrt(float64(n))))

	for i := 1; i <= l; i++ {
		if i*i == n {
			res++
		} else if n%i == 0 {
			res += 2
		}
	}

	return res
}

func main() {
	line := nextLine()

	n, _ := strconv.Atoi(line)
	ans := 0

	if n < 105 {
		ans = 0
	} else {
		for i := 105; i <= n; i += 2 {
			if count(i) == 8 {
				ans++
			}
		}
	}

	fmt.Println(ans)
}
