package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"sort"
	"strconv"
)

var N, M, ans int

func main() {
	fmt.Scan(&N, &M)
	reader := bufio.NewScanner(os.Stdin)
	reader.Split(bufio.ScanWords)

	A := make(SortBy, N)
	BC := make(BC, M)

	for i := 0; i < N; i++ {
		reader.Scan()
		A[i], _ = strconv.Atoi(reader.Text())
	}
	for i := 0; i < M; i++ {
		reader.Scan()
		BC[i].B, _ = strconv.Atoi(reader.Text())
		reader.Scan()
		BC[i].C, _ = strconv.Atoi(reader.Text())
	}

	sort.Sort(A)
	sort.Sort(BC)

	for i := 0; i < N; i++ {
		var j int

		for len(BC) != 0 && A[i] < BC[j].C {
			A[i] = BC[j].C
			BC[j].B--
			if 0 == BC[j].B {
				BC = append(BC[:j], BC[j+1:]...)
			}
			break
			j++
		}
		ans += A[i]
	}
	fmt.Println(ans)
}

/*  ----------------------------------------  */

func max(x ...int) int {
	var res int = x[0]
	for i := 1; i < len(x); i++ {
		res = int(math.Max(float64(x[i]), float64(res)))
	}
	return res
}

func min(x ...int) int {
	var res int = x[0]
	for i := 1; i < len(x); i++ {
		res = int(math.Min(float64(x[i]), float64(res)))
	}
	return res
}
func pow(x, y int) int { return int(math.Pow(float64(x), float64(y))) }
func abs(x int) int    { return int(math.Abs(float64(x))) }
func floor(x int) int  { return int(math.Floor(float64(x))) }

type BC []struct {
	B int
	C int
}

func (a BC) Len() int      { return len(a) }
func (a BC) Swap(i, j int) { a[i], a[j] = a[j], a[i] }
func (a BC) Less(i, j int) bool {
	return a[i].C > a[j].C
}

type SortBy []int

func (a SortBy) Len() int           { return len(a) }
func (a SortBy) Swap(i, j int)      { a[i], a[j] = a[j], a[i] }
func (a SortBy) Less(i, j int) bool { return a[i] < a[j] }
