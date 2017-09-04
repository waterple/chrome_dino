a := 0
Loop,
{

	PixelSearch vx, vy, 1000, 800, 1010, 810, 0x000000, 3, fast
	{
		if (ErrorLevel=1)
		{

			PixelSearch, vx, vy, 700, 280, 780, 285, 0x535353, 2, fast
			{
				if (ErrorLevel=1) {
					if (a=0){
						GetKeyState, isup, Up
						GetKeyState, isdn, Down

						if isup = D
						{
							Send, {Up up}
						}
						if isdn = U
						{
							Send, {Down down}
						}
					}
					if (a=1){
						Sleep, 80
						Loop{
						PixelSearch, vx, vy, 628, 290, 785, 295, 0x535353, 3, fast
						{
							if (ErrorLevel=1)
							{
								Send, {Up up}{Down down}
								Sleep, 10
								a := 0
								break
							}
						}
						}
					}
				}
				if (ErrorLevel = 0) {
					if (a=0){
						a := 1
						Send, {Down up}
						Send, {Up down}
						Sleep, 10
					}
				}
			}

		}

		if (ErrorLevel=0)
		{

			PixelSearch, vx, vy, 700, 280, 780, 285, 0xACACAC, 2, fast
			{
				if (ErrorLevel=1) {
					if (a=0){
						GetKeyState, isup, Up
						GetKeyState, isdn, Down

						if isup = D
						{
							Send, {Up up}
						}
						if isdn = U
						{
							Send, {Down down}
						}
					}
					if (a=1){
						Sleep, 100
						Loop{
							PixelSearch, vx, vy, 628, 290, 785, 295, 0xACACAC, 3, fast
							{
								if (ErrorLevel=1)
								{
									Send, {Up up}{Down down}
									Sleep, 10
									a := 0
									break
								}
							}
						}
					}
				}
				if (ErrorLevel = 0) {
					if (a=0){
						a := 1
						Send, {Down up}
						Send, {Up down}
						Sleep, 10
					}
				}
			}

		}
	}
}