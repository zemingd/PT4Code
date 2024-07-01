package main 

import (
        "fmt"
        "unicode/utf8"
)

func main () {
        var s, t string
        var an int
        fmt.Scan(&s, &t)
        if s == t {
                fmt.Println("Yes")
        }  else if  s != t {
                ko := utf8.RuneCountInString(s)
                ka := ko - 1
                for i := 0 ; i < ko ; i++{
                        s  = s[ka:ko] + s[0:ka]
                        if  s == t {
                                an +=1
                        }
                }
                if an > 0 { 
                        fmt.Println("Yes")
                }  else if an == 0 {
                        fmt.Println("No")
                }
        }
}
