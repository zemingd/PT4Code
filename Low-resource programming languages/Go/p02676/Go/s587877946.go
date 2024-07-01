package main

import (
        "bufio"
        "fmt"
        "os"
        "strconv"
)

var sc = bufio.NewScanner(os.Stdin)

func nextLine() string {
        sc.Scan()
        return sc.Text()
}

func main() {
        var l int

        length := nextLine()
        targetStr := nextLine()

        l, _ = strconv.Atoi(length)

        targetLength := len(targetStr)
        if l < targetLength {
                //idx := l - 1
                // left := targetLength - idx
                head := targetStr[:l]

                // for i := 0; i < left; i++ {
                //      head = head + "."
                // }
                fmt.Println(head + "...")

        } else {
                fmt.Println(targetStr)
        }

}