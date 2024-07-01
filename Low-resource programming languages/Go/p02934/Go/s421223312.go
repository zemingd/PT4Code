package main
import "fmt"

func main(){

        var N int
        fmt.Scan( &N )

	ret := 0.0

        for i := 0; i < N; i ++ {
                var v int
                fmt.Scan( &v )
		ret += 1/float64( v )
	}

        fmt.Println( 1/ret )
}