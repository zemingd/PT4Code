package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func main() {
	ins := nextLine()
	// var rosen [][]int
	// var ary_tmp []int
	tmp := strings.Split(ins, " ")
	// var l int = strconv.ParseInt(ary_tmp[0])
	m, _ := strconv.Atoi(tmp[1])
	q, _ := strconv.Atoi(tmp[2])

	rosen := make([][]int, m)
	for i := 0; i < m; i++ {
		ins := nextLine()
		tmp := strings.Split(ins, " ")
		t1, _ := strconv.Atoi(tmp[0])
		t2, _ := strconv.Atoi(tmp[1])
		rosen[i] = []int{t1, t2}
	}
	var results []int
	for i := 0; i < q; i++ {
		result := 0
		ins := nextLine()
		tmp := strings.Split(ins, " ")
		t1, _ := strconv.Atoi(tmp[0])
		t2, _ := strconv.Atoi(tmp[1])
		for j := 0; j < len(rosen); j++ {
			if t1 <= rosen[j][0] && rosen[j][1] <= t2 {
				result++
			}
		}
		results = append(results, result)
	}
	for i := 0; i < len(results); i++ {
		fmt.Println(results[i])
	}
}
