package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

type P struct {
	X int
	Y int
}

type Queue struct {
	p []*P
}

func (q *Queue) push(p *P) {
	q.p = append(q.p, p)
}

func (q *Queue) pop() {
	q.p = q.p[1:]
}

func (q *Queue) front() *P {
	return q.p[0]
}

func (q *Queue) size() int {
	return len(q.p)
}

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextLine() string {
	sc.Scan()
	return sc.Text()
}

var (
	H int
	W int
)

// 地形データ
var field [][]string

// 訪問状態
var visited [][]bool

// 各点までの最短距離のスライス
var d [][]int

func main() {
	sc.Split(bufio.ScanWords)
	H, W = nextInt(), nextInt()
	field = make([][]string, H)
	visited = make([][]bool, H)
	d = make([][]int, H)

	for i := 0; i < H; i++ {
		// 地形データ初期化
		field[i] = make([]string, W)

		// 訪問状態を初期化
		visited[i] = make([]bool, W)

		// 各点までの最短距離のスライス初期化
		d[i] = make([]int, W)
	}

	for i := 0; i < H; i++ {
		line := strings.Split(nextLine(), "")
		for j, l := range line {
			field[i][j] = l
		}
	}

	fmt.Println(bfs())

}

func bfs() int {
	// 初期位置をキューにpush
	q := Queue{}
	for h := 0; h < H; h++ {
		for w := 0; w < W; w++ {
			if field[h][w] == "#" {
				q.push(&P{X: h, Y: w})
				// 初期位置のコストを0

				d[h][w] = 0
				visited[h][w] = true
			}
		}
	}

	dx := []int{1, 0, -1, 0}
	dy := []int{0, 1, 0, -1}

	for q.size() > 0 {
		// キューの先頭を取り出す
		p := q.front()

		q.pop()

		// 移動4方向をループ
		for i := 0; i < 4; i++ {
			nx := p.X + dx[i]
			ny := p.Y + dy[i]

			if 0 <= nx && nx < H && 0 <= ny && ny < W && string(field[nx][ny]) != "#" && !visited[nx][ny] {
				q.push(&P{X: nx, Y: ny})
				d[nx][ny] = d[p.X][p.Y] + 1
				visited[nx][ny] = true

			}
		}

	}

	res := -1
	for h := 0; h < H; h++ {
		for w := 0; w < W; w++ {
			if field[h][w] == "." {
				res = max(res, d[h][w])
			}
		}
	}

	return res
}

func max(a, b int) int {
	if a < b {
		return b
	}
	return a
}
