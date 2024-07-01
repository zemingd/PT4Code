package main

import (
    "bufio"
    "fmt"
    "os"
)

var h, w, white, cnt int
var bs [][]byte
var qs, qs2 [][]int

func main() {
    fmt.Scan(&h, &w)
    bs = make([][]byte, h)
    qs = make([][]int, 0)
    white = h * w

    var sc = bufio.NewScanner(os.Stdin)
    for i := 0; i < h; i++ {
        sc.Scan()
        bs[i] = []byte(sc.Text())
        for j := range bs[i] {
            if bs[i][j] == '#' {
                qs = append(qs, []int{i, j})
                white--
            }
        }
    }

    for white > 0 {
        if cnt%2 == 0 {
            qs2 = make([][]int, 0)
            for k := range qs {
                loop(qs[k][0], qs[k][1])
            }
        } else {
            qs = make([][]int, 0)
            for k := range qs2 {
                loop(qs2[k][0], qs2[k][1])
            }
        }
        cnt++
    }

    fmt.Println(cnt)
}

func loop(i, j int) {
    // left
    if j > 0 && bs[i][j-1] == '.' {
        mark(i, j-1)
    }
    // top
    if i > 0 && bs[i-1][j] == '.' {
        mark(i-1, j)
    }
    // right
    if j < w-1 && bs[i][j+1] == '.' {
        mark(i, j+1)
    }
    // bottom
    if i < h-1 && bs[i+1][j] == '.' {
        mark(i+1, j)
    }
}

func mark(x, y int) {
    bs[x][y] = '#'
    if cnt%2 == 0 {
        qs2 = append(qs2, []int{x, y})
    } else {
        qs = append(qs, []int{x, y})
    }
    white--
}
