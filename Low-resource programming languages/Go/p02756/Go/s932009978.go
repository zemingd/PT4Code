package main
     
import (
    "fmt"
)
 
func main() {
    var s string
    var q int
    fmt.Scan(&s)
    fmt.Scan(&q)
    query := scanStrings(q)

    // fmt.Println(q)
    // fmt.Println(query)
    orient := false
    i := 0
    for i < q {
        //fmt.Println(query[i][0:1])
        if query[i][0:1] == "1" {
            orient = !orient;
        } else {
            if query[i][1:2] == "1" {
                if orient {
                    s = s + query[i][2:3]
                } else {
                    s = query[i][2:3] + s
                }
            } else {
                if orient {
                    s = query[i][2:3] + s
                } else {
                    s = s + query[i][2:3]
                }
            }
        }
        i++
    }
    if orient { s = Reverse(s)}
    fmt.Println(s)
}

func scanStrings(len int) (strings []string) {
    var str string 
    var f string
    var c string
    for i := 0; i < len; i++ {
        f = ""
        c = ""
        fmt.Scanf("%s", &str)
        if str == "2" {
            fmt.Scanf("%s", &f)
            fmt.Scanf("%s", &c)
        }
        strings = append(strings, str+f+c)
    }
    return
}

func Reverse(s string) string {
    r := []rune(s)
    for i, j := 0, len(r)-1; i < len(r)/2; i, j = i+1, j-1 {
        r[i], r[j] = r[j], r[i]
    }
    return string(r)
}