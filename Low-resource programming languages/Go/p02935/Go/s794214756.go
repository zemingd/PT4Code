package main

import (
	"bufio"
	"fmt"
	"os"
	"sort"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func main() {
	var headTmp = nextLine()
	var bodyTmp = nextLine()

	var body = strings.Split(bodyTmp, " ")

	var N int
	N, _ = strconv.Atoi(headTmp)
	var V []int

	for i := 0; i < N; i++ {
		var v int
		v, _ = strconv.Atoi(body[i])
		V = append(V, v)
	}

	sort.Sort(sort.IntSlice(V))

	// var A []int
	var x float32
	var VV []float32
	for i := 0; i < N; i++ {
		var vv float32
		vv = float32(V[i])
		// vv, _ = strconv.Atoi(V[0])
		VV = append(VV, vv)
	}

	for i := 0; i < N-1; i++ {

		x = (VV[0] + VV[1]) / 2
		VV = delete(VV, 0)
		// fmt.Println(VV)
		pos := 1
		VV = append(VV[:pos+1], VV[pos:]...)
		VV[pos] = x
		VV = delete(VV, 0)
		// fmt.Println(VV)
	}
	fmt.Println(VV[0])

}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func delete(s []float32, i int) []float32 {
	x := append(s[:i], s[i+1:]...)
	return x
}
