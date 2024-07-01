package main

/*
	@func timeCal 距離と速度を入れたらどのくらいかかるかを教えてくれる関数
	@param {int, int} 移動先の距離(m), 移動速度(m/min)
	@return 移動に必要な時間
*/
func timeCal(point, speed int) int {
	return point / speed
}

func main(point, speed int) string {
	limit := 10000 // 制限時間(min)

	n := timeCal(point, speed)
	if n > limit || n < 1 {
		return "No"
	}

	return "Yes"
}
