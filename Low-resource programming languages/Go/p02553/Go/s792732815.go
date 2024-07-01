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
	sc := bufio.NewScanner(os.Stdin)
	sc.Scan()
	inputs := strings.Split(sc.Text(), " ")

	var a []int
	for _, input := range inputs {
		n, _ := strconv.Atoi(input)
		a = append(a, n)
	}

	ans := []int{
		a[0] * a[2],
		a[0] * a[3],
		a[1] * a[2],
		a[1] * a[3],
	}

	sort.Ints(ans)
	fmt.Println(ans[3])
}
