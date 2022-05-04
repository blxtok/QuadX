local Game = nil
local Supported = nil

if game.PlaceId == 2629642516 then
   Game = "BitcoinMiner"
   Supported = true
end

if Supported == true then
   loadstring(game:HttpGet('https://raw.githubusercontent.com/blxtok/QuadX/main/games/' .. Game .. '.lua'))()
else
   if syn then
      printconsole("Game not supported.")
   else
      print("Game not supported.")
   end
end
