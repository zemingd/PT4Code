package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

var (
	d int
	g int
)

func main() {
	sc.Split(bufio.ScanWords)

	d = nextInt()
	g = nextInt()

	p := make([]int, d)
	c := make([]int, g)
	for i := 0; i < d; i++ {
		p[i] = nextInt()
		c[i] = nextInt()
	}

	res := 100000100000
	for bit := 0; bit < (1 << uint(d)); bit++ {
		sum := 0
		num := 0

		// p[i]をすべて解いた時の得点
		for i := 0; i < d; i++ {
			if bit&(1<<uint(i)) == 1<<uint(i) {
				sum += c[i] + p[i]*100*(int(i)+1)
				num += p[i]
			}
			// fmt.Println(res)

		}

		if sum >= g {
			res = min(res, num)
		} else {
			for i := d - 1; i >= 0; i-- {
				if bit&(1<<uint(i)) == 1<<uint(i) {
					continue
				}
				for j := 0; j < p[i]; j++ {
					if sum >= g {
						break
					}
					sum += 100 * (int(i) + 1)
					num++
				}
			}
			res = min(res, num)
		}

	}

	fmt.Println(res)
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}
