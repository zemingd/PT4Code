package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func main() {
	var n int
	fmt.Scan(&n)

	d := make(map[int]map[int]int)
	for i := 1; i <= n; i++ {
		d[i] = make(map[int]int)
	}

	scanner := bufio.NewScanner(os.Stdin)
	scanner.Split(bufio.ScanWords)
	for i := 1; i < n; i++ {
		scanner.Scan()
		u, _ := strconv.Atoi(scanner.Text())
		scanner.Scan()
		v, _ := strconv.Atoi(scanner.Text())
		scanner.Scan()
		dist, _ := strconv.Atoi(scanner.Text())
		d[u][v] = dist
		d[v][u] = dist

	}

	c := make([]int, n)

	searched := make(map[int]bool)
	var resolve func(pos int, color int)
	resolve = func(pos int, color int) {
		if searched[pos] {
			return
		}

		searched[pos] = true
		c[pos-1] = color
		for k, v := range d[pos] {
			if v%2 == 0 {
				resolve(k, color)
			} else {
				resolve(k, (color+1)%2)
			}
		}
	}
	resolve(1, 0)

	for i := 0; i < n; i++ {
		fmt.Println(c[i])
	}
}
