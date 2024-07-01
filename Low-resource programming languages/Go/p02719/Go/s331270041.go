package main
import "fmt"
func main(){
    // Your code here!
    var n, k int64
    fmt.Scan(&n, &k)
    var t = n
    n = n % k
    for ;;{
        n = abs((n-k))
        if n >= t{
            fmt.Println(t)
            return
        }
        t = n
        
    }
   
}

func abs(v int64) int64{
    if v < 0{
        return -v
    }else{
        return v
    }
}
