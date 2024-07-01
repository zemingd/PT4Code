package main

import "os"
import "fmt"
import "bufio"
import "strconv"
import "math"

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}

func contains(s []int, e int) bool {
	for _, v := range s {
		if e == v {
			return true
		}
	}
	return false
}

func remove(s []int, e int) []int {
	result := []int{}
	for _, v := range s {
		if v != e {
			result = append(result, v)
		}
	}
	return result
}

func main() {
	var X, N int
	fmt.Scan(&X, &N)

	if N == 0 {
		fmt.Println(X)
		os.Exit(0)
	}

	p := make([]int, N)

	sc.Split(bufio.ScanWords)
	for i := 0; i < N; i++ {
		p[i] = nextInt()
	}

	tmp := make([]int, 201)
	for i := 0; i < 201; i++ {
		if !contains(p, i-100) {
			tmp[i] = i - 100
		}
	}
	cand := remove(tmp, 0)

	var final int
	var ab int
	var nowab int

	final = X
	nowab = 100
	for i := 0; i < len(cand); i++ {
		ab = int(math.Abs(float64(X) - float64(cand[i])))
		if nowab > ab && ab != 0 {
			nowab = ab
			final = cand[i]
		}
	}

	fmt.Println(final)
}
