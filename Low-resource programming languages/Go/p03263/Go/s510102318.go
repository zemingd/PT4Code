package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
)

func out(x ...interface{}) {
	fmt.Println(x...)
}

var sc = bufio.NewScanner(os.Stdin)

func getInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func getString() string {
	sc.Scan()
	return sc.Text()
}

// min, max, asub, absなど基本関数
func max(a, b int) int {
	if a > b {
		return a
	}
	return b
}

func min(a, b int) int {
	if a < b {
		return a
	}
	return b
}

func asub(a, b int) int {
	if a > b {
		return a - b
	}
	return b - a
}

func abs(a int) int {
	if a >= 0 {
		return a
	}
	return -a
}

type move struct {
	xs, ys, xe, ye int
}

func moveTo00(x, y int) []move {
	m := make([]move, 0)
	for i := y; i > 0; i-- {
		m = append(m, move{i + 1, x + 1, i, x + 1})
	}
	for i := x; i > 0; i-- {
		m = append(m, move{1, i + 1, 1, i})
	}
	return m
}

func moveToxy(x, y int) []move {
	m := make([]move, 0)
	// out(x+1, y+1, "----------------")
	for i := 0; i < y; i++ {
		// out(move{i + 1, 1, i + 2, 1})
		m = append(m, move{i + 1, x + 1, i + 2, x + 1})
	}
	for i := 0; i < x; i++ {
		// out(move{y + 1, i + 1, y + 1, i + 2})
		m = append(m, move{y + 1, i + 1, y + 1, i + 2})
	}
	return m
}

func moveAllTo00(a [][]int, H, W int) []move {
	m := make([]move, 0)
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			C := a[i][j]
			for c := 0; c < C; c++ {
				m = append(m, moveTo00(j, i)...)
			}
		}
	}
	return m
}

func main() {
	sc.Split(bufio.ScanWords)
	sc.Buffer([]byte{}, 1000000)

	H, W := getInt(), getInt()
	a := make([][]int, H)
	b := make([][]int, H)
	sum := 0
	for i := 0; i < H; i++ {
		a[i] = make([]int, W)
		b[i] = make([]int, W)
		for j := 0; j < W; j++ {
			a[i][j] = getInt()
			b[i][j] = a[i][j] - 2
			sum += a[i][j]
		}
	}
	// out(a, sum)
	// out(b)
	m := moveAllTo00(a, H, W)
	n := sum / 2
	if sum%2 == 0 {
		n--
	}
	cnt := 1
	for i := 0; i < n; i++ {
		// out(i)
		x := cnt % W
		y := cnt / W
		m = append(m, moveToxy(x, y)...)
		m = append(m, moveToxy(x, y)...)
		cnt++
	}
	w := bufio.NewWriter(os.Stdout)
	defer w.Flush()
	fmt.Fprintln(w, len(m))
	for _, v := range m {
		fmt.Fprintf(w, "%d %d %d %d\n", v.ys, v.xs, v.ye, v.xe)
	}

}
