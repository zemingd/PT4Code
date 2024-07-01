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

    var n, k, d int
    Scanf("%d %d\n", &n, &k)

    var arr [105][105]bool

    for i := 1; i <= k; i += 1 {
        Scanf("%d\n", &d)
        var temp int
        for j := 0; j < d; j += 1 {
            Scanf("%d ", &temp)
            arr[temp][i] = true
        }
    }

    //find ans
    cnt := 0

    for i := 1; i <= n; i += 1 {
        flag := false
        for j := 1; j <= k; j += 1 {
            if arr[i][j] {
                flag = true
                break
            }
        }
        if !flag  {
            cnt += 1
        }
    }

    Println(cnt)

}
