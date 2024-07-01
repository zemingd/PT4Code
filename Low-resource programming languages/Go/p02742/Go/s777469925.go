package main
import "fmt"

func main(){
	var H, W int64
	fmt.Scan(&H, &W)
	var ans int64
	if 2 <= H && 2 <= W {
		if H % 2 == 0 && W % 2 == 0{
			ans = H * W / 2
		}else if H % 2 == 1 && W % 2 == 1{
			ans = (H-1)*(W-1)/2 + (W-1)/2 + (H-1)/2 + 1
		}else if H % 2 == 1 {
			ans = (H-1) * W / 2 + W/2 
		}else if W % 2 == 1 {
			ans = H * (W-1) / 2 + H/2
		}
	}else if H == 1 || W == 1{
		ans = 1
	}
	fmt.Println(ans)
}