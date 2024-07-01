package main

import (
    "fmt"
    "bufio"
    "os"
)

//FOR I/O : STARTS
var Reader *bufio.Reader = bufio.NewReader(os.Stdin)
var Writer *bufio.Writer = bufio.NewWriter(os.Stdout)
func Printf (f string, a ...interface{}) { fmt.Fprintf(Writer, f, a...) }
func Scanf (f string, a ...interface{}) { fmt.Fscanf(Reader, f, a...) }
func Println (a ...interface{}) { fmt.Fprintln(Writer, a...)}
func Scanln (a ...interface{}) { fmt.Fscanln(Reader, a...)}
//I/O ENDS HERE

func Abs(x int) int {
    if x < 0 {
        return -x
    }
    return x
}

func Min(x, y int) int {
    if x < y {
        return x
    } else {
        return y
    }
}

func Max(x, y int) int {
    if x >= y {
        return x
    } else {
        return y
    }
}

func Ceil(x, y int64) int64 {
    //returns x/y
    if x%y == 0 {
        return x/y
    } else {
        return int64(x/y)+1
    }
}

func main() {
    defer Writer.Flush()

    var n, m int
    Scanf("%d %d\n", &n, &m)

    heights := make([]int, n+5)
    var a, b int

    for i := 1; i <= n; i += 1 {
        Scanf("%d ", &heights[i])
    }

    adj := make([][]int, n+5)

    for i := 1; i <= m; i += 1 {
        Scanf("%d %d\n", &a, &b)
        adj[a] = append(adj[a], b)
        adj[b] = append(adj[b], a)
    }

    cnt := 0

    for i := 1; i <= n; i += 1 {

        if len(adj[i]) == 0 {
            cnt += 1
            continue
        } else {
            flag := false
            for j := 0; j < len(adj[i]); j += 1 {
                if heights[i] > heights[adj[i][j]] {
                    flag = true
                    break
                }
            }
            if flag {
                cnt += 1
            }
        }
    }

    Println(cnt)
}
