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
	}

	sort.Sort(d)

	for {
		flag := make([]int, N)
		for i := 1; i < N; i++ {
			if d[i-1].Max > d[i].Min {
				flag[i-1]++
				flag[i]++
			}
		}
		max := flag[0]
		pos := 0
		for i := 1; i < N; i++ {
			if flag[i] > max {
				max = flag[i]
				pos = i
			}
		}
		//		fmt.Println(N, d[:N])

		if max == 0 {
			break
		}
		// remove
		for i := 0; i < N-1; i++ {
			if i >= pos {
				d[i] = d[i+1]
			}
		}
		N--
		//		fmt.Println(N, d[:N])
	}
	fmt.Println(N)
}
