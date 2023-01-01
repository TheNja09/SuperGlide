function _OnFrame()
	World = ReadByte(Now + 0x00)
	Room = ReadByte(Now + 0x01)
	Place = ReadShort(Now + 0x00)
	Door = ReadShort(Now + 0x02)
	Map = ReadShort(Now + 0x04)
	Btl = ReadShort(Now + 0x06)
	Evt = ReadShort(Now + 0x08)
	Cheats()
end

function _OnInit()
	if GAME_ID == 0xF266B00B or GAME_ID == 0xFAF99301 and ENGINE_TYPE == "ENGINE" then--PCSX2
		Platform = 'PS2'
		Now = 0x032BAE0 --Current Location
		Save = 0x032BB30 --Save File
		Obj0 = 0x1C94100 --00objentry.bin
		Sys3 = 0x1CCB300 --03system.bin
		Btl0 = 0x1CE5D80 --00battle.bin
		Slot1 = 0x1C6C750 --Unit Slot 1
	elseif GAME_ID == 0x431219CC and ENGINE_TYPE == 'BACKEND' then--PC
		Platform = 'PC'
		Now = 0x0714DB8 - 0x56454E
		Save = 0x09A7070 - 0x56450E
		Obj0 = 0x2A22B90 - 0x56450E
		Sys3 = 0x2A59DB0 - 0x56450E
		Btl0 = 0x2A74840 - 0x56450E
		Slot1 = 0x2A20C58 - 0x56450E
	end
end

function Events(M,B,E) --Check for Map, Btl, and Evt
	return ((Map == M or not M) and (Btl == B or not B) and (Evt == E or not E))
end

function Cheats()
--WriteFloat(0x250D33E, -0.00001)
--WriteFloat(0x250D34A, -0.00001)
--WriteFloat(0x250D336, -0.00001)
--WriteFloat(0x250D402, -0.00001)
--WriteFloat(0x250D37E, -0.00001)
--WriteFloat(0x250D37A, -0.00001)
--WriteFloat(0x25136BA, -0.00001)
--WriteFloat(0x250D38E, -0.00001)
--WriteFloat(0x250D3BE, -0.00001)
--WriteFloat(0x251374A, -0.00001)
--WriteFloat(0x250D3D2, -0.00001)
--WriteFloat(0x250D3C2, -0.00001)
--WriteFloat(0x250D022, -0.00001)
--WriteFloat(0x250D416, -0.00001)
--WriteFloat(0x250D406, -0.00001)
--WriteFloat(0x250D342, 0)
--WriteFloat(0x250D386, 0)
--WriteFloat(0x250D3CA, 0)
--WriteFloat(0x250D40E, 0)
--WriteFloat(0x250D452, 0)
--WriteFloat(0x250D332, 40) --Glide 1 Speed (Default: 16)
--WriteFloat(0x250D376, 50) --Glide 2 Speed (Default: 20)
--WriteFloat(0x250D3BA, 60) --Glide 3 Speed (Default: 24)
--WriteFloat(0x250D3FE, 80) --Glide MAX Speed (Default: 32)
--WriteFloat(0x250D442, 160) --Glide AX2 Speed (Default: 64)
--Glide Turn Speeds: Default is 0.05235987902
--WriteFloat(0x250D34E, 0.1)
--WriteFloat(0x250D392, 0.2)
--WriteFloat(0x250D3D6, 0.3)
--WriteFloat(0x250D41A, 0.4)
--WriteFloat(0x250D45E, 0.5)
WriteFloat(Sys3+0x17A9C, -0.00001)
WriteFloat(Sys3+0x17AA8, -0.00001)
WriteFloat(Sys3+0x17A94, -0.00001)
WriteFloat(Sys3+0x17B60, -0.00001)
WriteFloat(Sys3+0x17ADC, -0.00001)
WriteFloat(Sys3+0x17AD8, -0.00001)
WriteFloat(Sys3+0x1DE18, -0.00001)
WriteFloat(Sys3+0x17AEC, -0.00001)
WriteFloat(Sys3+0x17B1C, -0.00001)
WriteFloat(Sys3+0x1DEA8, -0.00001)
WriteFloat(Sys3+0x17B30, -0.00001)
WriteFloat(Sys3+0x17B20, -0.00001)
WriteFloat(Sys3+0x17780, -0.00001)
WriteFloat(Sys3+0x17B74, -0.00001)
WriteFloat(Sys3+0x17B64, -0.00001)
WriteFloat(Sys3+0x17AA0, 0)
WriteFloat(Sys3+0x17AE4, 0)
WriteFloat(Sys3+0x17B28, 0)
WriteFloat(Sys3+0x17B6C, 0)
WriteFloat(Sys3+0x17BB0, 0)
WriteFloat(Sys3+0x17A90, 40) --Glide 1 Speed (Default: 16)
WriteFloat(Sys3+0x17AD4, 50) --Glide 2 Speed (Default: 20)
WriteFloat(Sys3+0x17B18, 60) --Glide 3 Speed (Default: 24)
WriteFloat(Sys3+0x17B5C, 80) --Glide MAX Speed (Default: 32)
WriteFloat(Sys3+0x17BA0, 160) --Glide AX2 Speed (Default: 64)
--Glide Turn Speeds: Default is 0.05235987902
WriteFloat(Sys3+0x17AAC, 0.1)
WriteFloat(Sys3+0x17AF0, 0.2)
WriteFloat(Sys3+0x17B34, 0.3)
WriteFloat(Sys3+0x17B78, 0.4)
WriteFloat(Sys3+0x17BBC, 0.5)
end
