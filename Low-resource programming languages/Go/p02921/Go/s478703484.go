package main
import "fmt"

func main(){
        var a, b string
        fmt.Scanf( "%s", &a )
        fmt.Scanf( "%s", &b )
        count := 0

        for i, _ := range a{
                if a[ i ] == b[ i ]{
                        count ++
                }
        }             
  fmt.Printf( "%d", count )

}
