package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
)

type elem struct {
	a int
	b int
}
type array []elem

func (a array) Len() int {
	return len(a)
}

func (a array) Swap(i, j int) {
	a[i], a[j] = a[j], a[i]
}

func (a array) Less(i, j int) bool {
	return a[i].a < a[j].a
}

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
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
	var n, k int
	fmt.Scan(&n, &k)
	ar := make(array, n)
	for i := 0; i < n; i++ {
		ar[i].a, ar[i].b = nextInt(), nextInt()
	}
	sort.Sort(ar)
	c := 0
	for _, x := range ar {
		if c+x.b < k {
			c += x.b
		} else {
			fmt.Println(x.a)
			break
		}
	}
}
