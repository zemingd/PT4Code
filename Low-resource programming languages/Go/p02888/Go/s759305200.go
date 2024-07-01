package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
	"sort"
)

func main() {
	var N int

	var ln []int

	fmt.Scanf("%d", &N)
	scanner := bufio.NewScanner(os.Stdin)
	scanner.Scan()
	dn := scanner.Text()
	dn = strings.TrimSpace(dn)

	dnn := strings.Fields(dn)

	for j := range dnn {
		var iparam int
		iparam, _ = strconv.Atoi(dnn[j])
		ln = append(ln, iparam)
	}

	sort.Slice(ln, func(i, j int) bool {
		return ln[i] < ln[j]
	})

	sum := 0

	for i :=0; i< N-2; i++ {
		if (ln[i + 2] < ln[i] + ln[i+1]) {
			sum++
		}
	}

	fmt.Printf("%d\n", sum)
}
