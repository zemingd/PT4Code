package main

import (
        "bufio"
        "fmt"
        "os"
)

// using 01-BFS
func solution(h, w int, c, d [2]int, s [][]byte) int {

        c[0], c[1] = c[0]-1, c[1]-1
        d[0], d[1] = d[0]-1, d[1]-1

        dx := [4]int{-1, 0, 1, 0}
        dy := [4]int{0, -1, 0, 1}

        const INF = 1e9
        dist := make([][]int, h)
        for i := range dist {
                dist[i] = make([]int, w)
                for j := range dist[i] {
                        dist[i][j] = INF
                }
        }
        // dequeを使う
        // cost: 0を使う辺は前からappend
        // cost: 1を使う辺は後からappend
        deque := make([][2]int, 0, h*w*25)
        dist[c[0]][c[1]] = 0
        deque = append(deque, [2]int{c[0], c[1]})
        for len(deque) > 0 {
                cur := deque[0]
                x := cur[0]
                y := cur[1]
                di := dist[x][y]
                deque = deque[1:]
                for i := 0; i < 4; i++ {
                        nx := x + dx[i]
                        ny := y + dy[i]
                        if nx < 0 || nx >= h || ny < 0 || ny >= w {
                                continue
                        }
                        if s[nx][ny] == '#' {
                                continue
                        }
                        if dist[nx][ny] <= di {
                                continue
                        }
                        dist[nx][ny] = di
                        deque = append([][2]int{{nx, ny}}, deque...)
                }
                // warp
                for i := -2; i <= 2; i++ {
                        for j := -2; j <= 2; j++ {
                                nx := x + i
                                ny := y + j
                                if nx < 0 || nx >= h || ny < 0 || ny >= w {
                                        continue
                                }
                                if s[nx][ny] == '#' {
                                        continue
                                }
                                if dist[nx][ny] <= di+1 {
                                        continue
                                }
                                dist[nx][ny] = di + 1
                                deque = append(deque, [2]int{nx, ny})
                        }
                }
        }
        out := dist[d[0]][d[1]]
        if out == INF {
                return -1
        }
        return out
}

func main() {
        r := bufio.NewReader(os.Stdin)
        var h, w int
        fmt.Fscan(r, &h, &w)
        var c [2]int
        fmt.Fscan(r, &c[0], &c[1])
        var d [2]int
        fmt.Fscan(r, &d[0], &d[1])
        s := make([][]byte, h)
        for i := range s {
                var t string
                s[i] = make([]byte, w)
                fmt.Fscan(r, &t)
                for j := range t {
                        s[i][j] = t[j]
                }
        }
        fmt.Println(solution(h, w, c, d, s))
}