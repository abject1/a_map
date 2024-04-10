-- ███╗   ███╗ █████╗ ███╗   ██╗██╗   ██╗         █████╗         ██████╗ ███████╗██╗   ██╗  ██████╗  █████╗ ████████╗
-- ████╗ ████║██╔══██╗████╗  ██║╚██╗ ██╔╝        ██╔══██╗        ██╔══██╗██╔════╝██║   ██║  ██╔══██╗██╔══██╗╚══██╔══╝
-- ██╔████╔██║███████║██╔██╗ ██║ ╚████╔╝         ███████║        ██║  ██║█████╗  ██║   ██║  ██████╔╝███████║   ██║   
-- ██║╚██╔╝██║██╔══██║██║╚██╗██║  ╚██╔╝          ██╔══██║        ██║  ██║██╔══╝  ╚██╗ ██╔╝  ██╔══██╗██╔══██║   ██║   
-- ██║ ╚═╝ ██║██║  ██║██║ ╚████║   ██║           ██║  ██║███████╗██████╔╝███████╗ ╚████╔╝██╗██████╔╝██║  ██║   ██║   
-- ╚═╝     ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝   ╚═╝           ╚═╝  ╚═╝╚══════╝╚═════╝ ╚══════╝  ╚═══╝ ╚═╝╚═════╝ ╚═╝  ╚═╝   ╚═╝   

AMap = "inCar"

-- everytime == tous jour a pied et en voiture
-- toWalk == uniquement a pied 
-- never == la map ne s'affiche jamaais
-- inCar == uniquement en voiture 

Citizen.CreateThread(function()
  while true do
  	local Joueur = PlayerPedId()
  	local VoitureJoueur = IsPedInAnyVehicle(Joueur, true)

  	if not IsEntityDead(Joueur) then
    	Wait(0)

        if AMap == "everytime" then
            if not VoitureJoueur then
    			DisplayRadar(true)
    		else
    			DisplayRadar(true)
    		end
        elseif AMap == "toWalk" then
    		if not VoitureJoueur then
    			DisplayRadar(true)
    		else
    			DisplayRadar(false)
    		end
        elseif AMap == "never" then
    		if not VoitureJoueur then
    			DisplayRadar(false)
    		else
    			DisplayRadar(false)
    		end
        elseif AMap == "inCar" then
    		if not VoitureJoueur then
    			DisplayRadar(false)
    		else
    			DisplayRadar(true)
    		end
        end
    else
    	Wait(500)
    end
    
  end
end)