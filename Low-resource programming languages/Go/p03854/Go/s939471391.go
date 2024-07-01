package main

import (
    "fmt"
    "regexp"
)

func main() {
    var str string
    fmt.Scan(&str)
    reps := []*regexp.Regexp{regexp.MustCompile("dream$"), regexp.MustCompile("dreamer$"), regexp.MustCompile("erase$"), regexp.MustCompile("eraser$")}
    for {
        flg := false
        for _, rep := range reps {
            if rep.MatchString(str) {
                str = rep.ReplaceAllString(str, "")
                flg = true
            }
        }
        if !flg {
            break
        }
    }
    if str == "" {
        fmt.Println("YES")
    } else {
        fmt.Println("NO")
    }
}