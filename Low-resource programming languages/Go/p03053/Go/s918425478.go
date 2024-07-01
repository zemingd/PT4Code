package main

import "fmt"

type pt struct {
	y int
	x int
}

func main() {
	var h, w int
	fmt.Scanf("%d%d", &h, &w)
	mas := make([][]rune, h)
	que := make([]pt, 0)
	for i := 0; i < h; i++ {
		mas[i] = make([]rune, w)
		for j := 0; j < w; j++ {
			fmt.Scanf("%c", &mas[i][j])
			if mas[i][j] == '#' {
				que = append(que, pt{y: i, x: j})
			}
		}
		fmt.Scanf("\n")
	}
	dpt := make([][]int, h)
	for i := 0; i < h; i++ {
		dpt[i] = make([]int, w)
	}
	var ans int
	for len(que) != 0 {
		p := que[0]
		que = que[1:]
		nbr := []pt{
			pt{y: p.y - 1, x: p.x},
			pt{y: p.y, x: p.x - 1},
			pt{y: p.y, x: p.x + 1},
			pt{y: p.y + 1, x: p.x},
		}
		for _, q := range nbr {
			if q.y < 0 || h <= q.y || q.x < 0 || w <= q.x {
				continue
			}
			if mas[q.y][q.x] == '.' {
				dpt[q.y][q.x] = dpt[p.y][p.x] + 1
				ans = dpt[q.y][q.x]
				mas[q.y][q.x] = '#'
				que = append(que, q)
			}
		}
	}
	fmt.Println(ans)
}
