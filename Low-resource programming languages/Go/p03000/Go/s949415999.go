package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func main() {
	var n, x int
	var l = make([]int, 0, n)
	sc := bufio.NewScanner(os.Stdin)
	if sc.Scan() {
		line := sc.Text()
		arr := strings.Fields(line)
		n, _ = strconv.Atoi(arr[0])
		x, _ = strconv.Atoi(arr[1])
	}
	if sc.Scan() {
		line := sc.Text()
		for _, s := range strings.Fields(line) {
			n, _ := strconv.Atoi(s)
			l = append(l, n)
		}
	}

	var bounds = make([]int, 0, n+1)
	bounds = append(bounds, 0)
	for i := 0; i < n; i++ {
		bounds = append(bounds, bounds[i]+l[i])
	}

	ans := 0
	for _, b := range bounds {
		if b <= x {
			ans++
		}
	}
	fmt.Println(ans)
}
