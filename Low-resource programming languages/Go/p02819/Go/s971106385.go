package main
import "fmt"

func main(){
    var n int
    fmt.Scan(&n)
    
    for ;;n++ {
        if isPrime(n) {
            fmt.Println(n)
            break
        }
    }
}

func isPrime(x int) bool {
    if x == 2 {
        return true
    }
    if x%2 == 0 || x == 1 {
        return false
    }
    
    for i:=3; i*i<=x; i+=2 {
        if x%i == 0 {
            return false
        }
    }
    return true
}