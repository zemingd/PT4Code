package main

import (
        "bufio"
        "fmt"
        "os"
)

// using 01-BFS
func solution(h, w int, c, d [2]int, s []string) int {

        c[0], c[1] = c[0]-1, c[1]-1
        d[0], d[1] = d[0]-1, d[1]-1

        dx := [4]int{-1, 0, 1, 0}
        dy := [4]int{0, -1, 0, 1}

        const INF = 1e9
        dist := make([][]int, h)
        for i := 0; i < h; i++ {
                dist[i] = make([]int, w)
                for j := 0; j < w; j++ {
                        dist[i][j] = INF
                }
        }
        // dequeを使う
        // cost: 0を使う場合は前からappend
        // cost: 1を使う場合は後からappend
        deque := make([][2]int, 0)
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
                                if i == 0 && j == 0 {
                                        continue
                                }
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
        s := make([]string, h)
        for i := 0; i < h; i++ {
                fmt.Fscan(r, &s[i])
        }
        fmt.Println(solution(h, w, c, d, s))
}