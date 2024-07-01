package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
	"strings"
)

func main() {
	var an, bn, m int
	fmt.Scan(&an, &bn, &m)

	aMin := math.MaxInt32
	bMin := math.MaxInt32
	pMin := math.MaxInt32

	a := make([]int, an)
	b := make([]int, bn)

	r := bufio.NewReader(os.Stdin)
	l, _ := r.ReadString('\n')
	l = strings.TrimSpace(l)
	for i, x := range strings.Split(l, " ") {
		a[i], _ = strconv.Atoi(x)
		if a[i] < aMin {
			aMin = a[i]
		}
	}

	l, _ = r.ReadString('\n')
	l = strings.TrimSpace(l)
	for i, x := range strings.Split(l, " ") {
		b[i], _ = strconv.Atoi(x)
		if b[i] < bMin {
			bMin = b[i]
		}
	}

	for i := 0; i < m; i++ {
		var x, y, c int
		fmt.Scan(&x, &y, &c)
		p := a[x-1] + b[y-1] - c
		if p < pMin {
			pMin = p
		}
	}

	sort.Ints(a)
	sort.Ints(b)
	aMin = a[0]
	bMin = b[0]

	if aMin+bMin < pMin {
		fmt.Println(aMin + bMin)
	} else {
		fmt.Println(pMin)
	}

}
