package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func init() {
	sc.Buffer([]byte{}, math.MaxInt64)
	sc.Split(bufio.ScanWords)
}

func nextInt() int {
	sc.Scan()
	i, err := strconv.Atoi(sc.Text())
	if err != nil {
		panic(err)
	}
	return i
}
func nextStr() string {
	sc.Scan()
	if err := sc.Err(); err != nil {
		panic(err)
	}
	return sc.Text()
}

func uniqIntSlice(a []int) []int {
	m := make(map[int]struct{})
	for _, v := range a {
		m[v] = struct{}{}
	}
	u := []int{}
	for k := range m {
		u = append(u, k)
	}
	return u
}

func main() {
	n := nextInt()
	k := nextInt()

	m := map[int][]int{}
	sum := 0
	for i:=0;i<n;i++{
		p:=nextInt()
		q:=nextInt()
		m[sum]=[]int{p,q}
		sum += q+1
	}

	for key,val := range m{
		if key <= k && k <= key+val[1]{
			fmt.Println(val[0])
		}
	}

}