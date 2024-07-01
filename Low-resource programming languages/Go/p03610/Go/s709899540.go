package main 
import (
        "fmt"
        "unicode/utf8"
)

func main () {
        var s, an  string
        fmt.Scan(&s)
        g := utf8.RuneCountInString(s)
        for i := 0 ; i < g ; i += 2 {
                f := i + 1
                an = an + s[i:f]
        }
         fmt.Println(an)
}
