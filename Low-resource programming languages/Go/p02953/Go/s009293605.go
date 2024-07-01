package main
import "fmt"

func main(){
    var n int
    fmt.Scan(&n)
    h := make([]int, n)
    for i := 0; i<n; i++ {
        fmt.Scan(&h[i])
    }
    ans := "Yes"
    for i := 0; i<n-1; i++ {
        if h[i]>h[i+1] {
            h[i]--
        }
    }
    for i := 0; i<n-1; i++ {
        if h[i]>h[i+1] {
            ans = "No"
            break
        }
    }
    fmt.Println(ans)
}

