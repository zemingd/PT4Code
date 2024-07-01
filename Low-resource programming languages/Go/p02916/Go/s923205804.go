package main

import (
    "bufio"
    "fmt"
    "os"
    "strconv"
    "strings"
)

func main() {
    var n int
    var a string
    var b string
    var c string

    fmt.Scanln(&n)

    sc := bufio.NewScanner(os.Stdin)

    if sc.Scan() {
        a = sc.Text()
    }

    if sc.Scan() {
        b = sc.Text()
    }

    if sc.Scan() {
        c = sc.Text()
    }

    as := strings.Split(a, " ")
    bs := strings.Split(b, " ")
    cs := strings.Split(c, " ")

    var happy int
    var pre_ate int = -1
    for _, an := range as {
        ai, _ := strconv.Atoi(an)

        tmp, _ := strconv.Atoi(bs[ai-1])
        happy += tmp

        if ai-pre_ate == 1 {
            // 追加満足度
            tmp, _ := strconv.Atoi(cs[pre_ate-1])
            happy += tmp
        }
        pre_ate = ai
    }
    fmt.Println(happy)

}
