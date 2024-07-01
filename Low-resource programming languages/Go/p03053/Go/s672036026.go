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
    var queue [][]int
    line = readLine(reader)
    arr := strings.Split(line, " ")
    H, _ := strconv.Atoi(arr[0])
    maps := make([][]string, H)
    visited := make([][]int, H)
	var cnt int = 0
  
    for i := 0; i < H; i++ {
        line = readLine(reader)
        for j, k := range line {
          	str := string(k)
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



    fmt.Println(cnt)
}

func readLine(reader *bufio.Reader) string {
    buf := make([]byte, 0, 4096)

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
