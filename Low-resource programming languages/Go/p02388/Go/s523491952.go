package main

import (
        "bufio"
        "fmt"
        "log"
        "os"
        "strconv"
        "strings"
)

func main() {
        rd := bufio.NewReader(os.Stdin)
        line, err := rd.ReadString('\n')
        if err != nil {
                log.Fatal(err)
        }
        val, err := strconv.ParseInt(strings.Trim(line, "\n"), 10, 32)
        if err != nil {
                log.Fatal(err)
        }
        val = val * val * val
        fmt.Println(val)
}

