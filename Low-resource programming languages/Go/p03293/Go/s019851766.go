package main 

import (
        "fmt"
        "unicode/utf8"
)

func main () {
        var s, t string 
        an := 0
        fmt.Scan(&s,&t)
        if s == t {
                fmt.Println("Yes")
        }  else if s !=t {
                lo :=utf8.RuneCountInString(s) 
                lp := lo -1
                for i :=0 ; i < lo ; i ++ {
                        s =s[lp:lo]+s[1:lp]
                        if s == t {
                                 an += 1
                        }
                }
                if an == 0 {
                        fmt.Println("No")
                }  else if an != 0 {
                        fmt.Println("Yes")
                }
        }
}
