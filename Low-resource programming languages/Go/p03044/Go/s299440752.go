package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var dm map[int]map[int]int
var colors []int
var checked []bool

func main() {
	sc := bufio.NewScanner(os.Stdin)
	sc.Split(bufio.ScanWords)

	sc.Scan()
	n, _ := strconv.Atoi(sc.Text())

	dm = make(map[int]map[int]int, n)
	for i := 1; i <= n; i++ {
		dm[i] = make(map[int]int)
	}

	colors = make([]int, n)
	checked = make([]bool, n)
	for i := 0; i < n-1; i++ {
		sc.Scan()
		v, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		u, _ := strconv.Atoi(sc.Text())
		sc.Scan()
		w, _ := strconv.Atoi(sc.Text())
		dm[v][u] = w
		dm[u][v] = w
	}

	color(1, 0)

	for _, c := range colors {
		fmt.Println(c)
	}
}

func color(v, d int) {
	if checked[v-1] {
		return
	}
	colors[v-1] = d
	checked[v-1] = true
	for u, w := range dm[v] {
		if w != 0 {
			color(u, (d+w)%2)
		}
	}
}
