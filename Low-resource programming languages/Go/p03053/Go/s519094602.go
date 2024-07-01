package main

import (
    "fmt"
    "os"
    "bufio"
    "strings"
    "strconv"
)

func main() {
    var fp *os.File
    fp = os.Stdin
    reader := bufio.NewReaderSize(fp, 4096)
    var line string
    var line_rune []rune
    var str string
    var queue [][]int
    line = readLine(reader)
    arr := strings.Split(line, " ")
    H, _ := strconv.Atoi(arr[0])
    W, _ := strconv.Atoi(arr[1])
    maps := make([][]string, H)
    visited := make([][]int, H)

    for i := 0; i < H; i++ {
        line_rune = []rune(readLine(reader))
        for j := 0; j < W; j++ {
            str = string(line_rune[j:j+1])
            maps[i] = append(maps[i], str)
            visited[i] = append(visited[i], -1)

            if str == "#" {
                var val []int
                val = append(val, i)
                val = append(val, j)
                queue = append(queue, val)
                visited[i][j] = 0
            }
        }
    }

    // BFS
    var dx [4]int
    var dy [4]int
    dx[0] = 0
    dx[1] = 0
    dx[2] = 1
    dx[3] = -1
    dy[0] = 1
    dy[1] = -1
    dy[2] = 0
    dy[3] = 0
    var now_x, now_y, next_x, next_y int
    var cnt int = 0

    for len(queue) > 0 {
        now_x = queue[0][0]
        now_y = queue[0][1]

        for i := 0; i < 4; i++ {
            next_x = queue[0][0] + dx[i]
            next_y = queue[0][1] + dy[i]

            if (next_x < 0 || next_x >= H || next_y < 0 || next_y >= W) {
                continue;
            }

            if visited[next_x][next_y] == -1 {
               //maps[next_x][next_y] == "." {

            //if next_x >= 0 && next_x <= W - 1 &&
               //next_y >= 0 && next_y <= H - 1 &&
               //visited[next_x][next_y] == -1 {
               //maps[next_x][next_y] == "." {
                 var val []int
                 val = append(val, next_x)
                 val = append(val, next_y)
                 queue = append(queue, val)
                 visited[next_x][next_y] = visited[now_x][now_y] + 1
                 cnt = visited[next_x][next_y]
                 maps[next_x][next_y] = "#"
            }
        }

        queue = remove(queue, 0)
    }

    fmt.Println(cnt)
}

func readLine(reader *bufio.Reader) string {
    buf := make([]byte, 0, 1024)

    for {
        l, p, e := reader.ReadLine()

        if e != nil {
            panic(e)
        }

        buf = append(buf, l...)

        if !p {
            break
        }
    }

    return string(buf)
}

// スライスの中身削除
func remove(ints [][]int, key int) [][]int {
    result := [][]int{}

    for k, v := range ints {
        if k != key {
            result = append(result, v)
        }
    }

    return result
}