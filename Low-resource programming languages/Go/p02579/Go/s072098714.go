package main

import (
	"bufio"
	"fmt"
	"math"
	"os"
	"strconv"
)

var (
	sc = bufio.NewReader(os.Stdin)

	wizard = "!"
	dist   = "@"
	H, W   int
	d      pos
	S      []string
)

type pos struct {
	x, y int
}

// 今のポジションから指定された箇所にすすめるかどうか
func (p *pos) ok(x, y int) bool {
	x = p.x + x
	if !(x < W && x >= 0) {
		return false
	}
	y = p.y + y
	if !(y < H && y >= 0) {
		return false
	}
	if S[y*W+x] == "#" {
		return false
	}
	return true
}

func main() {
	H, W = scanInt(), scanInt()
	c := pos{y: scanInt() - 1, x: scanInt() - 1}
	d = pos{y: scanInt() - 1, x: scanInt() - 1}
	S = make([]string, H*W)
	for i := 0; i < H; i++ {
		line := scanStr()
		for j, c := range line {
			S[i*W+j] = string(c)
		}
	}
	wc, ok := moveTo(c, 0, map[string]bool{})
	if !ok {
		fmt.Println("-1")
	} else {
		fmt.Println(wc)
	}
}

func moveTo(cur pos, wc int, hist map[string]bool) (int, bool) {
	key := fmt.Sprintf("%d,%d", cur.x, cur.y)
	if hist[key] {
		return wc, false
	}
	hist[key] = true
	if cur.x == d.x && cur.y == d.y {
		return wc, true
	}
	// 正なら右、負なら左方向に進むべき
	x := d.x - cur.x
	if x > 0 {
		if cur.ok(1, 0) {
			return moveTo(pos{x: cur.x + 1, y: cur.y}, wc, hist)
		}
	} else if x < 0 {
		if cur.ok(-1, 0) {
			return moveTo(pos{x: cur.x - 1, y: cur.y}, wc, hist)
		}
	}
	y := d.y - cur.y
	if y > 0 {
		if cur.ok(0, 1) {
			return moveTo(pos{x: cur.x, y: cur.y + 1}, wc, hist)
		}
	} else if y < 0 {
		if cur.ok(0, -1) {
			return moveTo(pos{x: cur.x, y: cur.y - 1}, wc, hist)
		}
	}
	// 以下ワープが必要

	// ワープ範疇にゴールがあればOK
	if abs(d.x-cur.x) <= 2 && abs(d.y-cur.y) <= 2 {
		return wc + 1, true
	}
	// 飛べるところでゴールに一番近いところに飛ぶ
	for i := cur.x - 2; i < cur.x+3; i++ {
		for j := cur.y - 2; j < cur.y+3; j++ {
			if i == 0 && j == 0 {
				continue
			}
			if cur.ok(i, j) {
				return moveTo(pos{x: cur.x + i, y: cur.y + j}, wc+1, hist)
			}
		}
	}
	return wc, false
}

func printMap(c pos, wc int) {
	fmt.Println("=============")
	fmt.Printf("H: %d, W: %d, c: %v, d: %v, wc: %d\n", H, W, c, d, wc)
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			if i == c.y && j == c.x {
				fmt.Print(wizard)
			} else if i == d.y && j == d.x {
				fmt.Print(dist)
			} else {
				fmt.Print(S[i*W+j])
			}
		}
		fmt.Println("")
	}
	fmt.Println("=============")
}

func abs(a int) int         { return int(math.Abs(float64(a))) }
func scan(a ...interface{}) { _, err := fmt.Fscan(sc, a...); pnc(err) }
func scanStr() (s string)   { scan(&s); return }
func scanInt() int          { i, err := strconv.Atoi(scanStr()); pnc(err); return i }
func scanFloat() float64    { f, err := strconv.ParseFloat(scanStr(), 64); pnc(err); return f }
func pnc(err error) {
	if err != nil {
		panic(err)
	}
}
