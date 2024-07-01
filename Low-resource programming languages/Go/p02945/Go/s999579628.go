package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	a, _ := strconv.Atoi(sc.Text())

	sc.Scan()
	b, _ := strconv.Atoi(sc.Text())

	l := []int{a + b, a - b, a * b}
	sort.Ints(l)

	fmt.Println(l[2])
}
