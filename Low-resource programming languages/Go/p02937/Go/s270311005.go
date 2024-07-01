package main

import "bufio"
import "fmt"
import "os"

func main() {
    // input
    var reader = bufio.NewReaderSize(os.Stdin, 10000000)
    var s, _, _ = reader.ReadLine()
    var t, _, _ = reader.ReadLine()

    // solve
    var next = make([][26]int, len(s) + 1)
    for c := 0; c < 26; c ++ {
        next[len(s)][c] = len(s)
    }
    for i := len(s) - 1; i >= 0; i -- {
        next[i] = next[i + 1]
        next[i][int(s[i] - 'a')] = i
    }

    var k = 0
    for _, c := range t {
        if next[0][int(c - 'a')] == len(s) {
            k = -1
            break
        }
retry:
        var i = k % len(s)
        k += next[i][int(c - 'a')] - i
        if next[i][int(c - 'a')] < len(s) {
            k += 1
        } else {
            goto retry
        }
    }

    // output
    var writer = bufio.NewWriter(os.Stdout)
    defer writer.Flush()
    fmt.Fprintln(writer, k)
}
