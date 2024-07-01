package main

import (
	"bufio"
	"container/list"
	"fmt"
	"os"
	"strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextInt() int {
	sc.Scan()
	i, e := strconv.Atoi(sc.Text())
	if e != nil {
		panic(e)
	}
	return i
}

func nextFloat64() float64 {
	sc.Scan()
	i, e := strconv.ParseFloat(sc.Text(), 64)
	if e != nil {
		panic(e)
	}
	return i
}

func nextString() string {
	sc.Scan()
	return sc.Text()
}

func abs(x int) int {
	if x < 0 {
		return -1 * x
	} else {
		return x
	}
}

type Queue struct {
	History *list.List
	Visited [][]int
	Load    [][]int
	Goal    bool

	Maze [][]int
}

func NewQueue(maze [][]int, ch, cw, ans int) *Queue {
	q := new(Queue)
	q.History = list.New()

	q.Visited = make([][]int, len(maze))
	for i := 0; i < len(maze); i++ {
		q.Visited[i] = make([]int, len(maze[i]))
	}
	q.History.PushBack([]int{ch, cw, ans})

	return q
}

func (q *Queue) BreathFirstSearch(maze [][]int, endH, endW, ans int) {
	hDirection := []int{1, -1, 0, 0}
	wDirection := []int{0, 0, -1, 1}

	for q.History.Len() > 0 {
		elm := q.History.Back()

		point := elm.Value.([]int)
		h, w := point[0], point[1]

		//fmt.Println("next", point)
		if h == endH && w == endW {
			//fmt.Println("OK", h, w, point[2])
			q.Goal = true
			break
		}

		if maze[h][w] == 0 {
			q.Visited[h][w] = 1
		} else {
			q.Visited[h][w] = -1
		}

		if maze[h][w] == 0 {
			for i := 0; i < 4; i++ {
				targetH := h + hDirection[i]
				targetW := w + wDirection[i]

				if targetH < 0 || targetH >= len(maze) {
					continue
				}
				if targetW < 0 || targetW >= len(maze[0]) {
					continue
				}
				if q.Visited[targetH][targetW] != 0 {
					continue
				}

				if maze[targetH][targetW] == 0 {
					q.Visited[targetH][targetW] = 1
					q.Load = append(q.Load, []int{targetH, targetW})
					q.History.PushBack([]int{targetH, targetW, ans})
				} else {
					q.Visited[targetH][targetW] = -1
				}
			}
		}

		q.History.Remove(elm)
	}
}

func main() {
	sc.Split(bufio.ScanWords)
	//sc.Buffer(nil, 10000000000)

	h, w := nextInt(), nextInt()
	ch, cw := nextInt(), nextInt()
	dh, dw := nextInt(), nextInt()

	s := make([][]int, h)
	s[0] = make([]int, w)

	for i := 0; i < h; i++ {
		s[i] = make([]int, w)
		n := nextString()
		for j, v := range n {
			if v == '#' {
				s[i][j] = 1
			} else {
				s[i][j] = 0
			}
		}
	}

	ans := 0
	q := NewQueue(s, ch-1, cw-1, ans)

	for q.History.Len() > 0 {
		elm := q.History.Back()
		point := elm.Value.([]int)

		//fmt.Println("(point)", point)
		// 全探索
		q.BreathFirstSearch(s, dh-1, dw-1, ans)

		if q.Goal {
			ans = point[2]
			break
		}
		q.History = list.New()

		q.Load = append(q.Load, []int{point[0], point[1], ans})

		ans += 1
		for _, v := range q.Load {
			targetH, targetW := v[0], v[1]
			//fmt.Println("load (h, w)", targetH, targetW)
			for th := targetH - 2; th <= targetH+2; th++ {
				for tw := targetW - 2; tw <= targetW+2; tw++ {
					if th < 0 || th >= len(q.Visited) {
						continue
					}
					if tw < 0 || tw >= len(q.Visited[th]) {
						continue
					}
					if s[th][tw] == 0 && q.Visited[th][tw] == 0 {
						q.History.PushBack([]int{th, tw, ans})
					}
				}
			}
		}

		//for v := q.History.Front(); v != nil; v = v.Next() {
		//	fmt.Println(v)
		//}

		if q.History.Len() == 0 {
			ans = -1
			break
		}
		q.Load = [][]int{}
	}
	//for _, v := range q.Visited {
	//	fmt.Println(v)
	//}
	fmt.Println(ans)
}
