package main

import (
	"bufio"
	"fmt"
	"os"
)

type State struct {
	ID, D int
}

func main() {
	H, W := ReadInt(), ReadInt()
	grid := make([]string, H)
	for i := 0; i < H; i++ {
		grid[i] = ReadString()
	}
	toID := func(x, y int) int {
		return x + y*W
	}
	fromID := func(id int) (x, y int) {
		return id % W, id / W
	}
	q := make([]State, 0)
	for y := 0; y < H; y++ {
		for x := 0; x < W; x++ {
			if grid[y][x] == '#' {
				q = append(q, State{
					ID: toID(x, y),
					D:  0,
				})
			}
		}
	}
	ans := -1
	seen := make([]bool, H*W)
	var dx = []int{1, 0, -1, 0}
	var dy = []int{0, 1, 0, -1}
	for len(q) > 0 {
		now := q[0]
		q = q[1:]
		if seen[now.ID] {
			continue
		}
		seen[now.ID] = true
		if ans < now.D {
			ans = now.D
		}
		x, y := fromID(now.ID)
		for i := 0; i < 4; i++ {
			nx, ny := x+dx[i], y+dy[i]
			if 0 <= nx && nx < W && 0 <= ny && ny < H {
				q = append(q, State{
					ID: toID(nx, ny),
					D:  now.D + 1,
				})
			}
		}
	}
	fmt.Println(ans)
}

var reader = bufio.NewReader(os.Stdin)

func Scan(a ...interface{}) {
	if _, err := fmt.Fscan(reader, a...); err != nil {
		panic(err)
	}
}
func ReadInt() (i int)       { Scan(&i); return }
func ReadString() (s string) { Scan(&s); return }
func ReadInts(n int) []int {
	v := make([]int, n)
	for i := 0; i < n; i++ {
		Scan(&v[i])
	}
	return v
}
