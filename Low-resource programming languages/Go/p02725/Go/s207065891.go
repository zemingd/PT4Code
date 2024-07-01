for i := 0; i < n-1; i++ {
		// 家間での距離を測り、最大のものを保持する
		base = max(base, a[i+1] - a[i])
	}