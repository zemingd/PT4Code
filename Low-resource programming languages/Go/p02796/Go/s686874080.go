package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type Data struct {
	X   int
	L   int
	Min int
	Max int
	Al  int
}

type Datas []Data

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func (p Datas) Len() int {
	return len(p)
}

func (p Datas) Swap(i, j int) {
	p[i], p[j] = p[j], p[i]
}

func (p Datas) Less(i, j int) bool {
	return p[i].X < p[j].X
}

func main() {
	//	fmt.Println("start")
	var N int
	sc.Split(bufio.ScanWords)
	N = nextInt()

	d := make(Datas, N)
	for i := 0; i < N; i++ {
		d[i].X = nextInt()
		d[i].L = nextInt()
		//fmt.Scanf("%d %d", &d[i].X, &d[i].L)
		d[i].Min = d[i].X - d[i].L // + 1
		d[i].Max = d[i].X + d[i].L //- 1
		d[i].Al = 1
	}

	sort.Sort(d)

	//	fmt.Println(N, d[:N])

	for {
		flag := make([]int, N)
		for i := 0; i < N; i++ {
			if d[i].Al == 0 {
				continue
			}
			for j := i + 1; j < N; j++ {
				if d[j].Al == 0 {
					continue
				}
				if d[i].Max > d[j].Min {
					flag[i]++
					flag[j]++
				}
			}
		}
		//		fmt.Println(N, d[:N], flag[:N])

		max := 0
		pos := 0
		for i := 0; i < N; i++ {
			if d[i].Al == 0 {
				continue
			}
			if max < flag[i] {
				pos = i
				max = flag[i]
			}
		}
		if max == 0 {
			break
		}
		if max == 1 {
			d[pos].Al = 0
			continue
		}
		//		fmt.Println(max, pos)
		d[pos].Al = 0
		for i := 0; i < N; i++ {
			if d[i].Al == 0 {
				continue
			}
			//			fmt.Println(i, d[pos].Min, d[i].Max)
			if (d[pos].X > d[pos].X) && (d[pos].Min < d[i].Max) {
				flag[i]--
				continue
			}
			//			fmt.Println(d[pos].Max, d[i].Min)
			if (d[pos].X < d[pos].X) && (d[pos].Max > d[i].Min) {
				flag[i]--
				continue
			}
		}
	}

	cnt := 0
	for i := 0; i < N; i++ {
		if d[i].Al == 1 {
			cnt++
		}
	}
	fmt.Println(cnt)
}
