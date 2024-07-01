package main 
import (
        "fmt"
        "sort"
)


func main () {
        var n , x, xx int 
        s := []int{}
        ss := []int{}

        fmt.Scan(&n)
        for i := 0 ; i < n ; i++ {
                fmt.Scan(&x)
                s = append (s, x)
        }
        nn := n -1 
        xx = nn / 2 
        for  i := 0 ; i < n ; i++ {
                
                for k := 0 ; k < n ; k ++ {
                        f := s[k]
                        if k != i{
                                ss = append (ss, f)
                        }
                }
                sort.Sort(sort.IntSlice(ss))
                fmt.Println(ss[xx])
                ss = []int{}
        }
}
