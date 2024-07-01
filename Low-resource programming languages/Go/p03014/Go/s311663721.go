package main

import (
	"bufio"
	"fmt"
	"os"
)

var sc = bufio.NewScanner(os.Stdin)

const inf = 1 << 60
const mod int = 1e9 + 7

func init() {
	sc.Split(bufio.ScanWords)
	sc.Buffer(make([]byte, 1e7), 1e7)
}

type Pair struct{ x, y int }

func ri() (n int) {
	sc.Scan()
	for _, v := range sc.Bytes() {
		n = n*10 + int(v-48)
	}
	return
}

func rb() []byte {
	sc.Scan()
	return sc.Bytes()
}

func main() {
	h, w := ri(), ri()
	s := make([][]byte, h)
	for i := 0; i < h; i++ {
		s[i] = rb()
	}
	grid := make([][]Pair, h)
	for i := 0; i < h; i++ {
		grid[i] = make([]Pair, w)
	}
	for i := 0; i < h; i++ {
		for j := 0; j < w; j++ {
			if s[i][j] == '#' {
				grid[i][j].x = -1
				continue
			}
			ct := 0
			for k := j; k >= 0 && s[i][k] == '.'; k-- {
				ct++
			}
			for k := j + 1; k < w && s[i][k] == '.'; k++ {
				ct++
			}
			grid[i][j].x = ct
		}
	}
	for j := 0; j < w; j++ {
		for i := 0; i < h; i++ {
			if s[i][j] == '#' {
				grid[i][j].y = -1
				continue
			}
			ct := 0
			for k := i; k >= 0 && s[k][j] == '.'; k-- {
				ct++
			}
			for k := i + 1; k < h && s[k][j] == '.'; k++ {
				ct++
			}
			grid[i][j].y = ct
		}
	}
	ans := 0
	for _, v := range grid {
		for _, vv := range v {
			if vv.x == -1 || vv.y == -1 {
				continue
			}
			tmp := vv.x + vv.y
			if !(vv.x == 1 && vv.y == 1) {
				tmp -= 1
			}
			if tmp > ans {
				ans = tmp
			}
		}
	}
	fmt.Println(ans)
}
