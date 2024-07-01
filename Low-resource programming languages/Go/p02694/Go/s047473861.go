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

    var x int64
    Scanf("%d\n", &x)

    y := int64(100)
    cnt := 0

    for y < x {
        temp := float64(y)
        temp *= 1.01
        cnt += 1
        y = int64(temp)
    }

    Println(cnt)
}
