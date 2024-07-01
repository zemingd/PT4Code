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



func main() {
    defer Writer.Flush()

    var a, b, k int
    Scanf("%d\n%d %d\n", &k, &a, &b)

    // Println(k, a, b)

    for i := 1; i*k <= 1000; i += 1 {
        if a <= i*k && i*k <= b {
            Println("OK")
            return
        }
    }
    Println("NG")
}
