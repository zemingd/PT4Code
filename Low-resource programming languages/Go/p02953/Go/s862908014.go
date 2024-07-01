package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func solve() {
	var n int
	fmt.Scan(&n)

	h := make([]int, n)
	sc := bufio.NewScanner(os.Stdin)
	buffer := make([]byte, 10*200001)
	sc.Buffer(buffer, 10000)
	sc.Scan()
	args := strings.Split(sc.Text(), " ")
	for i := 0; i < n; i++ {
		h[i], _ = strconv.Atoi(args[i])
	}

	able := true
	b := h[0] - 1
	for i := 1; i < n; i++ {
		if b <= h[i]-1 {
			b = h[i] - 1
		} else if b <= h[i] {
			b = h[i]
		} else {
			able = false
			break
		}
	}

	if able {
		fmt.Println("Yes")
	} else {
		fmt.Println("No")
	}
}

func main() {
	solve()
}
