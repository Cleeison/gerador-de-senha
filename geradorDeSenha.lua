os.execute("chcp 65001")

local letters = {"a", "b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"}
local numbers = {"1","2","3","4","5","6","7","8","9","0"}
local special = {"*","@","#","$","!","?"}
local characterList = {
  letters,
  numbers,
  special
}

print("Quantos caracteres você deseja em sua senha?")
local length = io.read("*n")

local password = ""

for i = 1, length, 1 do
    
    --Get List (letters, numbers or special)
    local getList = math.random(#characterList)
    local list = characterList[getList]

    --Get Character
    local getCharacter = math.random(#list)
    local char = list[getCharacter]

    password = password ..char
end

print("Sua senha é:")
print(password)

