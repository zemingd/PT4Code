package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.ParseInt(sc.Text(), 10, 64)
	if e != nil {
		panic(e)
	}
	return int(i)
}

func main() {
	n := nextInt()
	vs := make([]int, 0, n)

	for index := 0; index < n; index++ {
		vs = append(vs, nextInt())
	}

	sort.Sort(sort.IntSlice(vs))

	tmp := make([]float64, 0, n+1)
	for index := 0; index < n-1; index++ {
		if index == 0 {
			v := (float64(vs[index]) + float64(vs[index+1])) / 2
			tmp = append(tmp, v)
		} else {
			v := (float64(vs[index+1]) + tmp[index-1]) / 2
			// fmt.Printf("%#v %#v %#v\n", float64(vs[index+1]), tmp[index-1], v)
			tmp = append(tmp, v)
		}
	}

	// fmt.Printf("%#v\n", tmp)

	// if n%2 != 0 {
	// 	fmt.Println((tmp[n-1] + float64(vs[n-1])) / 2)
	// 	return
	// }
	fmt.Println(tmp[len(tmp)-1])
}
