package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

//Util
func nextStr() string {
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

func maxInt(a, b int) int {
	if a > b {
		return a
	} else {
		return b
	}
}

func minInt(a, b int) int {
	if a > b {
		return b
	} else {
		return a
	}
}

func absInt(a int) int {
	if a >= 0 {
		return a
	} else {
		return -a
	}
}

//Main
var sc = bufio.NewScanner(os.Stdin)

var n, m, q int

var pairs [][]int

//https://youtu.be/C5_NnCp1CRI?t=1778
//組み合わせを全部列挙
func dfs(A []int) int {
	if len(A) == n+1 {
		var sum int
		for _, p := range pairs {
			if A[p[1]]-A[p[0]] == p[2] {
				sum += p[3]
			}
		}
		return sum
	}

	var ans int
	for i := 1; i <= m; i++ {
		//1つ前が、iより大きい場合はスキップ
		if A[len(A)-1] > i {
			continue
		}
		ans = maxInt(dfs(append(A, i)), ans)
	}
	return ans
}

func main() {
	sc.Split(bufio.ScanWords)
	n, m, q = nextInt(), nextInt(), nextInt()
	for i := 0; i < q; i++ {
		pair := make([]int, 4)
		pair[0], pair[1], pair[2], pair[3] = nextInt(), nextInt(), nextInt(), nextInt()
		pairs = append(pairs, pair)
	}

	//dfsの処理がしやすいように、[1]で初期化
	A := []int{1}
	fmt.Println(dfs(A))
	//fmt.Println(N, M, Q, pairs)

}
