package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"strconv"
	"strings"
)

// H =height
var H int

// W =witdh
var W int

func main() {
	scanInit()

	H = nextInt()
	W = nextInt()
	ch := nextInt() - 1
	cw := nextInt() - 1
	dh := nextInt() - 1
	dw := nextInt() - 1
	s := nextGrid(H, W)

	warpmap := make([][]string, H)
	for i := 0; i < H; i++ {
		warpmap[i] = make([]string, W)
		for j := 0; j < W; j++ {
			warpmap[i][j] = s[i][j]
		}
	}

	// Enqueue 初期地点
	enq(P{ch, cw, 0})
	s[ch][cw] = "a"
	warpmap[ch][cw] = "0"

	// 探索開始
	for queue.Len() > 0 {
		p := deq()
		i := p.x
		j := p.y
		nowwarp := p.warp

		target := "."
		tansakuzumi := "a"
		//* 徒歩
		//* 検索方向設定
		// 12時から時計回り ４方向
		dx := []int{+0, +1, +0, -1}
		dy := []int{-1, +0, +1, +0}

		dnum := len(dx)
		for d := 0; d < dnum; d++ {
			ni := i + dy[d]
			nj := j + dx[d]

			// 領域外なら探索せずにスルー
			if ni < 0 || H <= ni || nj < 0 || W <= nj {
				continue
			}
			if s[ni][nj] != tansakuzumi && s[ni][nj] == target {
				// . HIT
				s[ni][nj] = tansakuzumi
				warpmap[ni][nj] = fmt.Sprintf("%d", nowwarp)
				enq(P{ni, nj, nowwarp})
			}
			if s[ni][nj] == tansakuzumi && int(warpmap[ni][nj][0]-'0') > nowwarp {
				// . HIT(override)
				s[ni][nj] = tansakuzumi
				warpmap[ni][nj] = fmt.Sprintf("%d", nowwarp)
				enq(P{ni, nj, nowwarp})
			}

		}

		//* warp 5*5
		//* 検索方向設定
		// 12時から時計回り ４方向 +16方向
		w1x := []int{+1, +1, -1, -1, +0, +1, +2, +2, +2, +2, +2, +1, +0, -1, -2, -2, -2, -2, -2, -1}
		w1y := []int{-1, +1, +1, -1, -2, -2, -2, -1, +0, +1, +2, +2, +2, +2, +2, +1, +0, -1, -2, -2}

		dnum = len(w1x)
		for d := 0; d < dnum; d++ {
			ni := i + w1y[d]
			nj := j + w1x[d]

			// 領域外なら探索せずにスルー
			if ni < 0 || H <= ni || nj < 0 || W <= nj {
				continue
			}
			if s[ni][nj] != tansakuzumi && s[ni][nj] == target {
				// . HIT
				s[ni][nj] = tansakuzumi
				warpmap[ni][nj] = fmt.Sprintf("%d", nowwarp+1)
				enq(P{ni, nj, nowwarp + 1})
			}
			if s[ni][nj] == tansakuzumi && int(warpmap[ni][nj][0]-'0') > nowwarp {
				// . HIT(override)
				s[ni][nj] = tansakuzumi
				warpmap[ni][nj] = fmt.Sprintf("%d", nowwarp+1)
				enq(P{ni, nj, nowwarp + 1})
			}
		}
	}

	//DBGprintGrid(s)                        //! DBG
	//fmt.Println("--------- warp map ----") //! DBG
	//DBGprintGrid(warpmap)                  //! DBG

	if warpmap[dh][dw] == "." {
		fmt.Println(-1)
	} else {
		wcnt := int(warpmap[dh][dw][0] - '0')
		fmt.Println(wcnt)
	}
}

// ---- readfunc
var sc = bufio.NewScanner(os.Stdin)

func scanInit() {
	const cap = 200 * 1024 // default=64*1024
	var buf = make([]byte, cap)
	sc.Buffer(buf, cap)
	sc.Split(bufio.ScanWords)
	return
}
func nextInt() int {
	sc.Scan()
	i, _ := strconv.Atoi(sc.Text())
	return i
}
func nextStr() string {
	sc.Scan()
	return sc.Text()
}

// read func
func nextGrid(a int, b int) [][]string {
	mat := make([][]string, a)
	for i := 0; i < a; i++ {
		mat[i] = make([]string, b)
		tmp := nextStr()
		mat[i] = strings.Split(tmp, "")
	}
	return mat
}

// DBGprintGrid print the grid
//! DBG
func DBGprintGrid(g [][]string) {
	for i := 0; i < H; i++ {
		for j := 0; j < W; j++ {
			fmt.Printf("%s", g[i][j])
		}
		fmt.Printf("\n")
	}
}

var queue = list.New()

// P is (x,y)
type P struct {
	x, y int
	warp int
}

func enq(a P) {
	queue.PushBack(a)
}
func deq() P {
	e := queue.Front()
	queue.Remove(e)
	return e.Value.(P) // 明示的キャストが必要
}

// DBGprintqueue print the queue
//! DBG
func DBGprintqueue() {
	fmt.Printf("DBGqueue: [")
	now := queue.Front()
	for now != nil {
		fmt.Printf("%d ", now.Value.(P))
		now = now.Next()
	}
	fmt.Printf(" ]")
}
