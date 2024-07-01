package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)
	as := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)
	for i := 0; i < n; i++ {
		sc.Scan()
		as[i], _ = strconv.Atoi(sc.Text())
	}

	max := 0
	for i := 0; i < n; i++ {
		if as[i] > max {
			max = as[i]
		}
	}

	var ans, chance int
	for i := max; i > 0; i-- {
		if ans != 0 {
			break
		}
		ans = i
		chance = 1
		for _, v := range as {
			if v%i != 0 {
				chance--
			}
			if chance < 0 {
				ans = 0
				break
			}
		}
	}
	fmt.Println(ans)
}
