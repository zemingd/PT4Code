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
    var nums_like []int

    for j := 0; j < 10; j++ {
        if contains(nums, strconv.Itoa(j)) == false {
            nums_like = append(nums_like, j)
        }
    }

    var N int
    var num string
    arr1 := strings.Split(stdin[0], " ")
    N, _ = strconv.Atoi(arr1[0])
    Nstr := strconv.Itoa(N)
    len := len(Nstr)
    var cnt int

    for i := N; i < 10000; i++ {
        cnt = 0

        for j := 0; j < len; j++ {
            num = string([]rune(strconv.Itoa(i)[j:j+1]))

            if contains(nums, num) == true {
                break
            }

            cnt++

            if cnt == len {
                fmt.Println(i)
                return
            }
        }
    }
}

func contains(s []string, e string) bool {
    for _, v := range s {
        if e == v {
            return true
        }
    }
    return false
}