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
	sc.Buffer(make([]byte, 1024*1024), bufio.MaxScanTokenSize)
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func nextFloat() float64 {
	sc.Scan()
	f, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return f
}

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func scanInts(n int) []int {
	is := make([]int, n)
	for i := 0; i < n; i++ {
		is[i] = nextInt()
	}
	return is
}

func main() {
	N := nextInt()
	IS := scanInts(N)
	sort.Sort(sort.IntSlice(IS))
	if len(IS) > 5 {
		IS = IS[0:4]
	}
	for {
		if len(IS) == 1 {
			fmt.Println(IS[0])
			return
		}
		if IS[0] == IS[1] {
			IS = IS[1:]
			continue
		} else if IS[0] == 1 {
			fmt.Println(1)
			return
		}
		a := IS[1] - IS[0]
		b := IS[0]
		IS[1] = max(a, b)
		IS[0] = min(a, b)
	}
}

func min(a, b int) int {
	if a < b {
		return a
	} else {
		return b
	}
}

func max(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}
