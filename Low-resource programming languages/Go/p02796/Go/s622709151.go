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
	return p[i].Max < p[j].Max
}

func check(d Datas, n int) bool {
	min := d[n].Min
	for i := 0; i < n; i++ {
		if (d[i].Al == 1) && (d[i].Max > min) {
			return false
		}
	}
	return true
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
		d[i].Al = 0
	}

	sort.Sort(d)
	cnt := 0
	/*
		for i := 0; i < N; i++ {
			if check(d, i) {
				//			fmt.Println("get", i)
				d[i].Al = 1
				cnt++
			}
		}
	*/
	//	fmt.Println(N, d[:N])
	fmt.Println(cnt)
}
