file = io.open("UnicodeFile.txt", "rb")

while true do
	line = file:read(L"*l")
	if not line then
		break
	end
	print(type(line), line)
end