package main

import (
    "fmt"
    "bufio"
    "os"
    "strings"
)

func main() {
    stdin := bufio.NewScanner(os.Stdin)

    if stdin.Scan() {
        S := stdin.Text()
        cnt := 0
        arr := strings.Split(S, "")
        j := 0

        for i, _:= range arr {
            if i > 0 && arr[i] != arr[j] {
                cnt = cnt+2
            } else {
                j = i
            }
        }

        fmt.Println(cnt)
    }
}