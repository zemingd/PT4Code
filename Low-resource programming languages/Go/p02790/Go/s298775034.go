package main

import (
	"fmt"
	"sort"
	"strconv"
	"strings"
)

func main() {
	var a, b int
	fmt.Scan(&a, &b)

	repeat_b := strings.Repeat(strconv.Itoa(b), a)
	repeat_a := strings.Repeat(strconv.Itoa(a), b)

	ans := []string{repeat_a, repeat_b}
	sort.Strings(ans)

	fmt.Println(ans[0])
}
