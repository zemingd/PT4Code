package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var n int
	var a []int
	scanner.Scan()
	n, _ = strconv.Atoi(scanner.Text())
	for i := 0; i < n; i++ {
		var j int
		scanner.Scan()
		j, _ = strconv.Atoi(scanner.Text())
		a = append(a, j)
	}

	max1 := -1
	max2 := -1
	for _, v := range a {
		if v > max1 {
			max2 = max1
			max1 = v
		} else if v > max2 {
			max2 = v
		}
	}

	var ans []int
	for i := 0; i < n; i++ {
		if a[i] != max1 {
			ans = append(ans, max1)
		} else {
			ans = append(ans, max2)
		}
	}

	var buf string
	for i := 0; i < n; i++ {
		buf += fmt.Sprint(ans[i]) + "\n"
	}

	fmt.Print(buf)
}
