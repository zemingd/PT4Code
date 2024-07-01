package main
import "fmt"
func main(){
    // Your code here!
    var n int
    fmt.Scan(&n)
    fmt.Println(n)
    t := make([]int, n)
    for i := 0; i < n; i++ {
        fmt.Scan(&t[i])
    }
    fmt.Println(t)
    
    l := len(t)
    count := 0
    for i := 0; i < l; i++ {
        if t[i] % 2 == 1 {
            count++
            continue
        }
        
        if t[i] % 3 == 0 || t[i] % 5 == 0{
            count++
            continue
        }
    }
    if count == len(t){
        fmt.Println("APPROVED")
    }else{
        fmt.Println("DENIED")
    }
    
}