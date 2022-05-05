local basic_playermodels = {
    --Male
    [1] = {
        [1] = "models\player\group01\male_01.mdl"
        [2] = "models\player\group01\male_02.mdl"
        [3] = "models\player\group01\male_03.mdl"
        [4] = "models\player\group01\male_04.mdl"
        [5] = "models\player\group01\male_05.mdl"
        [6] = "models\player\group01\male_06.mdl"
        [7] = "models\player\group01\male_07.mdl"
        [8] = "models\player\group01\male_08.mdl"
        [9] = "models\player\group01\male_09.mdl"
    }
    --Female
    [2] = {
        [1] = "models\player\group01\female_01.mdl"
        [2] = "models\player\group01\female_02.mdl"
        [3] = "models\player\group01\female_03.mdl"
        [4] = "models\player\group01\female_04.mdl"
        [5] = "models\player\group01\female_05.mdl"
        [6] = "models\player\group01\female_06.mdl"
    }
}
local function CreateGFrightPlayer(ply)
    local genderVal = math.random(1, 2)
    local randModel = basic_playermodels[genderVal][math.random(1, #basic_playermodels[genderVal])]
    
    ply:SetModel(randModel)
end

function GM:PlayerInitialSpawn(ply)
	CreateGFrightPlayer(ply)
end

