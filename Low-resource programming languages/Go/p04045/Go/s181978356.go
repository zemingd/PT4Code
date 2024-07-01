package main

import (
    "fmt"
    "bufio"
    "os"
    "strconv"
    "strings"
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

    nums := strings.Split(stdin[1], " ")
    var N int
    var num string
    arr1 := strings.Split(stdin[0], " ")
    N, _ = strconv.Atoi(arr1[0])
    var cnt int
    var length int

    for i := N; i <= 99999; i++ {
        cnt = 0
        length = len(strconv.Itoa(i))

        for j := 0; j < length; j++ {
            num = string([]rune(strconv.Itoa(i)[j:j+1]))

            if contains(nums, num) == true {
                break
            }

            cnt++

            if cnt == length && i >= N {
                fmt.Println(i)
                return
            }
        }
    }
}

func contains(strs []string, val string) bool {
    for _, v := range strs {
        if val == v {
            return true
        }
    }
    return false
}