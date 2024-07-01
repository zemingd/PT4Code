package main
import (
  "fmt"
  "os"
  "bufio"
//  "strings"
  "strconv"
//  "sort"
)

// var rdr = bufio.NewReaderSize(os.Open("input.txt"), 1000000)
var rdr = bufio.NewReaderSize(os.Stdin, 1000000)

func read_line() string {
    buf := make([]byte, 0, 1000000)
    for {
        l, p, e := rdr.ReadLine()
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

func main() {
    // as := make([] int, 5)
    // for i, word := range strings.Split(read_line(), " ") {
    //     as[i], _ = strconv.Atoi(word)
    // }

    strconv.Atoi(read_line())
    S := read_line()

    res := 0
    var prev_c rune
    for _, c := range(S) {
        if prev_c != c {
            res += 1
        }
        prev_c = c
    }

    fmt.Println(res)
}