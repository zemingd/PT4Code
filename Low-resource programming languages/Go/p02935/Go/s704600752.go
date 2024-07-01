package main

import (
	"fmt"
	"bufio"
	"os"
	"strconv"
	"sort"
)

var sc = bufio.NewScanner(os.Stdin)
func scanInt() int {
	sc.Scan()
	a,_ := strconv.Atoi(sc.Text())
	return a
}

func scanText() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	sc.Split(bufio.ScanWords)
	
	n := scanInt()
	v := make([]float64, n)
	for i := 0; i < n; i++ {
		v[i] = float64(scanInt())
	}

	sort.Float64s(v)

	for len(v) != 1 {
		p,q := -1,-1
		diff := float64(1000)
		for i := 0; i < len(v)-1; i++ {
			if diff > v[i+1] - v[i] {
				diff = v[i+1] - v[i]
				p,q = i,i+1
			}
		}

		s := (v[q] + v[p])/2.0
		v = append(v[:p],v[q+1:]...)
		v = append(v, s)
		sort.Float64s(v)
	}

	fmt.Println(v[0])

}
