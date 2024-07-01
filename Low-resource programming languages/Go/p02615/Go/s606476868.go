package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)
	var n, ans int
	scanner.Scan()
	fmt.Sscan(scanner.Text(), &n)

	a := make([]int, n)
	scanner.Scan()
	for i, v := range strings.Split(scanner.Text(), " ") {
		a[i], _ = strconv.Atoi(v)
	}

	sort.Ints(a)
	for i := n - 1; i > 0; i-- {
		ans += a[i]
	}
	fmt.Println(ans)
}
