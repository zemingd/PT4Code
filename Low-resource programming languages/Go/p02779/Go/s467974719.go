package main
import "fmt"
func main(){
    // Your code here!
    var n int
    fmt.Scan(&n)
    t := make([]string, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&t[i])
    }
    
    if true == check_uniq(t){
        fmt.Println("YES")
    }else{
        fmt.Println("NO")
    }
}

func check_uniq(origin []string) bool{
    m := make(map[string]bool)
    uniq := [] string{}
    for _, ele := range origin {
        if !m[ele] {
            m[ele] = true
            uniq = append(uniq, ele)
        }
    }
    if len(origin) == len(m){
        return true
    }
    return false
}