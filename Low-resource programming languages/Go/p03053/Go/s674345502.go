package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

var sc = bufio.NewScanner(os.Stdin)

func ini() {
	var buf = make([]byte, 10000)
	sc.Buffer(buf, 1000000)
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

func a(l [][]int, B [][]rune, H, W int) [][]int {
	n := [][]int{}
	d := [][]int{{1, 0}, {-1, 0}, {0, 1}, {0, -1}}
	for _, xy := range l {
		y := xy[1]
		x := xy[0]
		for _, dxy := range d {
			dx := dxy[1]
			dy := dxy[0]
			ny := y + dy
			nx := x + dx
			if 0 <= ny && ny < H && 0 <= nx && nx < W && B[ny][nx] == '.' {
				B[ny][nx] = '#'
				n = append(n, []int{ny, nx})
			}
		}
	}
	return n
}

func main() {
	ini()
	HW := strings.Split(nextLine(), " ")
	H, _ := strconv.Atoi(HW[0])
	W, _ := strconv.Atoi(HW[1])
	B := make([][]rune, H)
	for i := 0; i < H; i++ {
		B[i] = make([]rune, W)
		for j, v := range nextLine() {
			B[i][j] = v
		}
	}

	l := [][]int{}
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if B[i][j] == '#' {
				k := []int{i, j}
				l = append(l, k)
			}
		}
	}
	ans := 0
	for len(l) != 0 {
		l = a(l, B, H, W)
		ans++
	}
	fmt.Println(ans - 1)
}
