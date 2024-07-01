package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func next() string {
	sc.Scan()
	return sc.Text()
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func main() {
	sc.Split(bufio.ScanWords)

	d, g := nextInt(), nextInt()
	c, s := make([]int, d), make([]int, d)
	for i := 0; i < d; i++ {
		c[i] = nextInt()
		s[i] = nextInt()
	}

	min := 1 << 30
	// 全完する得点の問題をbit全探索
	for bit := 0; bit < (1 << uint(d)); bit++ {
		sum, num := 0, 0

		for i := 0; i < d; i++ {
			if bit & (1 << uint(i)) != 0 {
				sum += (i+1) * 100 * c[i] + s[i]
				num += c[i]
			}
		}

		// 全完だけで目標を超えていたら次の探索
		if sum >= g {
			if min > num {
				min = num
			}
			continue
		}

		// 1番得点の高い問題から順に解いていく
		for i := d-1; i >= 0; i-- {
			if bit & (1 << uint(i)) != 0 {
				continue
			}
			for j := 0; j < c[i]; j++ {
				if sum >= g {
					break
				}
				sum += (i+1) * 100
				num++
			}
		}

		if min > num {
			min = num
		}
	}

	fmt.Println(min)
}