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
	num, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return num
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

type inputs struct {
	a, b, c, d int
}

func getScore(in []inputs, as []int) int {
	total := 0
	for i := 0; i < len(in); i++ {
		if as[in[i].b]-as[in[i].a] == in[i].c {
			total += in[i].d
		}
	}
	return total
}

func df(in []inputs, as []int, n, m, q int) int {
	if len(as) == n {
		return getScore(in, as)
	}

	max := 0
	if len(as) == 0 {
		for i := 1; i <= m; i++ {
			as = append(as, i)
			tmp := df(in, as, n, m, q)
			if max < tmp {
				max = tmp
			}
			as = nil
		}
		return max
	}

	for i := as[len(as)-1]; i <= m; i++ {
		as = append(as, i)
		tmp := df(in, as, n, m, q)
		if max < tmp {
			max = tmp
		}
		as = as[:len(as)-1]
	}

	return max
}

func main() {
	sc.Split(bufio.ScanWords)

	n := nextInt()
	as := make([]int, 0, n)
	m := nextInt()
	q := nextInt()
	in := []inputs{}

	for i := 0; i < q; i++ {
		a := nextInt() - 1
		b := nextInt() - 1
		c := nextInt()
		d := nextInt()
		in = append(in, inputs{a, b, c, d})
	}

	ans := df(in, as, n, m, q)
	fmt.Println(ans)
}
