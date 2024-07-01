package main

import (
    "fmt"
    "bufio"
    "os"
    "strconv"
    "strings"
    "sort"
)

var stdin []string

func main() {
    scanner := bufio.NewScanner(os.Stdin)

    var tmp string

    for scanner.Scan() {
        tmp = scanner.Text()

        if tmp == "" {
            break
        } else {
            stdin = append(stdin, scanner.Text())
        }
    }

    var N int
    arr := strings.Split(stdin[0], " ")
    N, _ = strconv.Atoi(arr[0])
    //L, _ = strconv.Atoi(arr[1])

    strs := make([]string, N) // 数が分かっているのでmakeで生成

    for i := 1; i <= N; i++ {
        strs[i - 1] = stdin[i]
    }

    sort.Strings(strs)

    for j := 0; j < N; j++ {
        fmt.Print(strs[j])
    }
    fmt.Println()
}