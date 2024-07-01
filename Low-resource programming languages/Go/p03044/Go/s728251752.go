package main

import (
	"fmt"
	"io"
	"os"
)

func answer(reader io.Reader, writer io.Writer) {
	var n int
	fmt.Fscan(reader, &n)
	u := make([]int, n)
	v := make([]int, n)
	w := make([]int, n)
	c := make([]int, n)
	e := map[int]map[int]int{}
	p := make(map[int]struct{})
	f := make(map[int]struct{})
	for i := 0; i < n; i++ {
		e[i] = map[int]int{}
		c[i] = 0
	}
	for i := 0; i < n - 1; i++ {
		fmt.Fscan(reader, &u[i])
		fmt.Fscan(reader, &v[i])
		fmt.Fscan(reader, &w[i])
		//fmt.Printf("u:%d, v:%d, w:%d\n", u[i],v[i],w[i])
		e[u[i]-1][v[i]-1] = w[i]
		e[v[i]-1][u[i]-1] = w[i]
	}
	//fmt.Printf("%v\n", e)
	c[0] = 0
	p[0] = struct{}{}
	for len(p) > 0 {
		for k1, _ := range p {
			for k2, _ := range e[k1] {
				_, ok := f[k1]
				if ok {
					continue
				}
				if e[k1][k2] % 2 == 0 {
					c[k2] = c[k1]
				} else {
					c[k2] = (c[k1]+1)%2
				}
				p[k2] = struct{}{}
			}
			delete(p, k1)
			f[k1]= struct{}{}
		}
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
