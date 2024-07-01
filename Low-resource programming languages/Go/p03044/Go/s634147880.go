package main

import (
	"bufio"
	"fmt"
	"io"
	"os"
	"strconv"
)


var sc *bufio.Scanner

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

type edge struct {
	node   int
	weight int
}

func answer(reader io.Reader, writer io.Writer) {
	sc = bufio.NewScanner(reader)
	sc.Split(bufio.ScanWords)
	n := nextInt()
	c := make([]int, n)
	p := make([]int, n)
	//e := map[int]map[int]int{}
	e := make([][]edge, n)
	f := make([]bool, n)

	for i := 0; i < n - 1; i++ {
		u:= nextInt()
		v:= nextInt()
		w:= nextInt()
		e[u-1] = append(e[u-1], edge{v-1,w})
		e[v-1] = append(e[v-1], edge{u-1,w})
	}
	//fmt.Printf("%v\n", e)
	idx := 1
	for i:=0; i<idx; i++ {
		k1 := p[i]
		//fmt.Printf("k1:%d, len(e[k1]);%d\n", k1, len(e[k1]))
		for _, v := range e[k1] {
			k2 := v.node
			if f[k2] == true {
				continue
			}
			if v.weight % 2 == 0 {
				c[k2] = c[k1]
			} else {
				c[k2] = (c[k1]+1)%2
			}
			p[idx] = k2
			idx++
		}
		f[k1]= true
	}
	for i := 0; i < n; i++ {
		_, _ = fmt.Fprintf(writer, "%d", c[i])
		if i < n-1 {
			_, _ = fmt.Fprint(writer, "\n")
		}
	}
}

func main() {
	answer(os.Stdin, os.Stdout)
}
