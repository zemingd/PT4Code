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

func Min(x, y int64) int64 {
    if x < y {
        return x
    } else {
        return y
    }
}

func Max(x, y int64) int64 {
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

    var a, b, n int64
    Scanf("%d %d %d\n", &a, &b, &n)

  	x := Min(b-1, n)
  
    temp1 := int64((a*x)/b)
    temp2 := a*int64(x/b)
    // Println(temp1, temp2)
  	ans := (temp1 - temp2)


    Println(ans)
}
