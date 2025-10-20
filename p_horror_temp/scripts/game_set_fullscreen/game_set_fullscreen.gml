function game_set_fullscreen(_fs) {
	//im gonna give you three guesses what this function does and the first two don't count
	//But for real, this  makes sure all the display variables get set correctly when swapping
	global.FULLSCREEN = _fs;
	window_set_fullscreen(_fs);
	var _disW = global.displayW,
		_disH = global.displayH;
	
	global.gameW = (_fs) ? _disW : global.windowW;
	global.gameH = (_fs) ? _disH : global.windowH;
	appsurface_update(global.gameW,global.gameH);
	
}