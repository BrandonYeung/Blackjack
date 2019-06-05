local composer = require( "composer" )
local scene = composer.newScene()

function scene:show( event )
 
    local sceneGroup = self.view
    local phase = event.phase

    if ( phase == "will" ) then
   		
    	--Background
   		local background = display.newRect(display.contentCenterX, display.contentCenterY, 1000, 1000)
        background:setFillColor( 1/255,109/255,41/255 )
        sceneGroup:insert( background )

        --Images to create a deck of cards
        local deckOfCards = display.newImage("Assets/PNG/red_back.png") 
        deckOfCards.x = 270
        deckOfCards.y = 100
        deckOfCards.width = 75
        deckOfCards.height = 100

        local deckOfCards2 = display.newImage("Assets/PNG/red_back.png") 
        deckOfCards2.x = 272.5
        deckOfCards2.y = 102.5
        deckOfCards2.width = 75
        deckOfCards2.height = 100
      	
      	local deckOfCards3 = display.newImage("Assets/PNG/red_back.png") 
        deckOfCards3.x = 275
        deckOfCards3.y = 105
        deckOfCards3.width = 75
        deckOfCards3.height = 100

        --This controls which random cards you and the dealer will receive
        math.randomseed( os.time() )

        --This is the code that creates the dealer and his starting hand
        dealerText = display.newText( "The Dealer", 160, -20, native.systemFont, 20 )
		dealerText:setFillColor( 255/255, 255/255, 255/255 )

		dealerAmount1 = nil

		dealerCard1 = math.random(1,52)
		dealerCardImage = nil

		dealerCard2 = display.newImage( "Assets/PNG/red_back.png" )
		dealerCard2.x = 100
		dealerCard2.y = 50
		dealerCard2.width = 75
		dealerCard2.height = 100

		--The collection of card images for the dealer
		
		--Clubs
		if dealerCard1 == 1 then
			dealerAmount1 = 2
			dealerCardImage = display.newImage( "Assets/PNG/2C.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 2 then
			dealerAmount1 = 3
			dealerCardImage = display.newImage( "Assets/PNG/3C.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 3 then
			dealerAmount1 = 4
			dealerCardImage = display.newImage( "Assets/PNG/4C.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 4 then
			dealerAmount1 = 5
			dealerCardImage = display.newImage( "Assets/PNG/5C.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 5 then
			dealerAmount1 = 6
			dealerCardImage = display.newImage( "Assets/PNG/6C.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 6 then
			dealerAmount1 = 7
			dealerCardImage = display.newImage( "Assets/PNG/7C.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 7 then
			dealerAmount1 = 8
			dealerCardImage = display.newImage( "Assets/PNG/8C.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 8 then
			dealerAmount1 = 9
			dealerCardImage = display.newImage( "Assets/PNG/9C.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 9 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/10C.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 10 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/JC.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 11 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/QC.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 12 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/KC.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 13 then
			dealerAmount1 = 11
			dealerCardImage = display.newImage( "Assets/PNG/AC.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end

		--Hearts
		if dealerCard1 == 14 then
			dealerAmount1 = 2
			dealerCardImage = display.newImage( "Assets/PNG/2H.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 15 then
			dealerAmount1 = 3
			dealerCardImage = display.newImage( "Assets/PNG/3H.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 16 then
			dealerAmount1 = 4
			dealerCardImage = display.newImage( "Assets/PNG/4H.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 17 then
			dealerAmount1 = 5
			dealerCardImage = display.newImage( "Assets/PNG/5H.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 18 then
			dealerAmount1 = 6
			dealerCardImage = display.newImage( "Assets/PNG/6H.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 19 then
			dealerAmount1 = 7
			dealerCardImage = display.newImage( "Assets/PNG/7H.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 20 then
			dealerAmount1 = 8
			dealerCardImage = display.newImage( "Assets/PNG/8H.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 21 then
			dealerAmount1 = 9
			dealerCardImage = display.newImage( "Assets/PNG/9H.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 22 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/10H.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 23 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/JH.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 24 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/QH.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 25 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/KH.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 26 then
			dealerAmount1 = 11
			dealerCardImage = display.newImage( "Assets/PNG/AH.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end

		--Spades
		if dealerCard1 == 27 then
			dealerAmount1 = 2
			dealerCardImage = display.newImage( "Assets/PNG/2S.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 28 then
			dealerAmount1 = 3
			dealerCardImage = display.newImage( "Assets/PNG/3S.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 29 then
			dealerAmount1 = 4
			dealerCardImage = display.newImage( "Assets/PNG/4S.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 30 then
			dealerAmount1 = 5
			dealerCardImage = display.newImage( "Assets/PNG/5S.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 31 then
			dealerAmount1 = 6
			dealerCardImage = display.newImage( "Assets/PNG/6S.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 32 then
			dealerAmount1 = 7
			dealerCardImage = display.newImage( "Assets/PNG/7S.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 33 then
			dealerAmount1 = 8
			dealerCardImage = display.newImage( "Assets/PNG/8S.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 34 then
			dealerAmount1 = 9
			dealerCardImage = display.newImage( "Assets/PNG/9S.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 35 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/10S.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 36 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/JS.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 37 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/QS.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 38 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/KS.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 39 then
			dealerAmount1 = 11
			dealerCardImage = display.newImage( "Assets/PNG/AS.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end

		--Diamonds
		if dealerCard1 == 40 then
			dealerAmount1 = 2
			dealerCardImage = display.newImage( "Assets/PNG/2D.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 41 then
			dealerAmount1 = 3
			dealerCardImage = display.newImage( "Assets/PNG/3D.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 42 then
			dealerAmount1 = 4
			dealerCardImage = display.newImage( "Assets/PNG/4D.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 43 then
			dealerAmount1 = 5
			dealerCardImage = display.newImage( "Assets/PNG/5D.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 44 then
			dealerAmount1 = 6
			dealerCardImage = display.newImage( "Assets/PNG/6D.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 45 then
			dealerAmount1 = 7
			dealerCardImage = display.newImage( "Assets/PNG/7D.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 46 then
			dealerAmount1 = 8
			dealerCardImage = display.newImage( "Assets/PNG/8D.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 47 then
			dealerAmount1 = 9
			dealerCardImage = display.newImage( "Assets/PNG/9D.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 48 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/10D.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 49 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/JD.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 50 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/QD.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 51 then
			dealerAmount1 = 10
			dealerCardImage = display.newImage( "Assets/PNG/KD.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end
		if dealerCard1 == 52 then
			dealerAmount1 = 11
			dealerCardImage = display.newImage( "Assets/PNG/AD.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end

		if dealerCard1 == 53 then
			dealerAmount1 = 2
			dealerCardImage = display.newImage( "Assets/PNG/2C.png" )
			dealerCardImage.x = 160
			dealerCardImage.y = 60
			dealerCardImage.width = 75
			dealerCardImage.height = 100
		end

		--Text indicating the dealer's score
		dealerAmountText = display.newText( "Amount: ".. dealerAmount1, 275, -20, native.systemFont, 12 )
		dealerAmountText:setFillColor( 255/255, 255/255, 255/255 )

		



		--This is the code that sets up the player's hand
		playerText = display.newText( "Your Hand", 160, 500, native.systemFont, 20 )
		playerText:setFillColor( 255/255, 255/255, 255/255 )
		
		playerAmount1 = nil
		playerAmount2 = nil
		playerAmount4 = 0

		playerCard1 = math.random(1,52)
		playerCardImage1 = nil

		playerCard2 = math.random(1,52)
		playerCardImage2 = nil 






		--Cards for the player

		--Clubs
		if playerCard1 == 1 then
			playerAmount1 = 2
			playerCardImage1 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 2 then
			playerAmount1 = 3
			playerCardImage1 = display.newImage( "Assets/PNG/3C.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 3 then
			playerAmount1 = 4
			playerCardImage1 = display.newImage( "Assets/PNG/4C.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 4 then
			playerAmount1 = 5
			playerCardImage1 = display.newImage( "Assets/PNG/5C.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 5 then
			playerAmount1 = 6
			playerCardImage1 = display.newImage( "Assets/PNG/6C.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 6 then
			playerAmount1 = 7
			playerCardImage1 = display.newImage( "Assets/PNG/7C.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 7 then
			playerAmount1 = 8
			playerCardImage1 = display.newImage( "Assets/PNG/8C.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 8 then
			playerAmount1 = 9
			playerCardImage1 = display.newImage( "Assets/PNG/9C.png" )
			playerCardImage1.x = 100
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 9 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/10C.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 10 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/JC.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 11 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/QC.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 12 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/KC.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 13 then
			playerAmount1 = 11
			playerCardImage1 = display.newImage( "Assets/PNG/AC.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end

		--Hearts
		if playerCard1 == 14 then
			playerAmount1 = 2
			playerCardImage1 = display.newImage( "Assets/PNG/2H.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 15 then
			playerAmount1 = 3
			playerCardImage1 = display.newImage( "Assets/PNG/3H.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 16 then
			playerAmount1 = 4
			playerCardImage1 = display.newImage( "Assets/PNG/4H.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 17 then
			playerAmount1 = 5
			playerCardImage1 = display.newImage( "Assets/PNG/5H.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 18 then
			playerAmount1 = 6
			playerCardImage1 = display.newImage( "Assets/PNG/6H.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 19 then
			playerAmount1 = 7
			playerCardImage1 = display.newImage( "Assets/PNG/7H.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 20 then
			playerAmount1 = 8
			playerCardImage1 = display.newImage( "Assets/PNG/8H.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 21 then
			playerAmount1 = 9
			playerCardImage1 = display.newImage( "Assets/PNG/9H.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 22 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/10H.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 23 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/JH.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 24 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/QH.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 25 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/KH.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 26 then
			playerAmount1 = 11
			playerCardImage1 = display.newImage( "Assets/PNG/AH.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end

		--Spades
		if playerCard1 == 27 then
			playerAmount1 = 2
			playerCardImage1 = display.newImage( "Assets/PNG/2S.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 28 then
			playerAmount1 = 3
			playerCardImage1 = display.newImage( "Assets/PNG/3S.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 29 then
			playerAmount1 = 4
			playerCardImage1 = display.newImage( "Assets/PNG/4S.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 30 then
			playerAmount1 = 5
			playerCardImage1 = display.newImage( "Assets/PNG/5S.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 31 then
			playerAmount1 = 6
			playerCardImage1 = display.newImage( "Assets/PNG/6S.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 32 then
			playerAmount1 = 7
			playerCardImage1 = display.newImage( "Assets/PNG/7S.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 33 then
			playerAmount1 = 8
			playerCardImage1 = display.newImage( "Assets/PNG/8S.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 34 then
			playerAmount1 = 9
			playerCardImage1 = display.newImage( "Assets/PNG/9S.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 35 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/10S.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 36 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/JS.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 37 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/QS.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 38 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/KS.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 39 then
			playerAmount1 = 11
			playerCardImage1 = display.newImage( "Assets/PNG/AS.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end

		--Diamonds
		if playerCard1 == 40 then
			playerAmount1 = 2
			playerCardImage1 = display.newImage( "Assets/PNG/2D.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 41 then
			playerAmount1 = 3
			playerCardImage1 = display.newImage( "Assets/PNG/3D.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 42 then
			playerAmount1 = 4
			playerCardImage1 = display.newImage( "Assets/PNG/4D.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 43 then
			playerAmount1 = 5
			playerCardImage1 = display.newImage( "Assets/PNG/5D.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 44 then
			playerAmount1 = 6
			playerCardImage1 = display.newImage( "Assets/PNG/6D.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 45 then
			playerAmount1 = 7
			playerCardImage1 = display.newImage( "Assets/PNG/7D.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 46 then
			playerAmount1 = 8
			playerCardImage1 = display.newImage( "Assets/PNG/8D.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 47 then
			playerAmount1 = 9
			playerCardImage1 = display.newImage( "Assets/PNG/9D.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 48 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/10D.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 49 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/JD.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 50 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/QD.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 51 then
			playerAmount1 = 10
			playerCardImage1 = display.newImage( "Assets/PNG/KD.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end
		if playerCard1 == 52 then
			playerAmount1 = 11
			playerCardImage1 = display.newImage( "Assets/PNG/AD.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end

		if playerCard1 == 53 then
			playerAmount1 = 2
			playerCardImage1 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage1.x = 185
			playerCardImage1.y = 400
			playerCardImage1.width = 75
			playerCardImage1.height = 100
		end

------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------------------------------------




				--Clubs
		if playerCard2 == 1 then
			playerAmount2 = 2
			playerCardImage2 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 2 then
			playerAmount2 = 3
			playerCardImage2 = display.newImage( "Assets/PNG/3C.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 3 then
			playerAmount2 = 4
			playerCardImage2 = display.newImage( "Assets/PNG/4C.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 4 then
			playerAmount2 = 5
			playerCardImage2 = display.newImage( "Assets/PNG/5C.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 5 then
			playerAmount2 = 6
			playerCardImage2 = display.newImage( "Assets/PNG/6C.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 6 then
			playerAmount2 = 7
			playerCardImage2 = display.newImage( "Assets/PNG/7C.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 7 then
			playerAmount2 = 8
			playerCardImage2 = display.newImage( "Assets/PNG/8C.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 8 then
			playerAmount2 = 9
			playerCardImage2 = display.newImage( "Assets/PNG/9C.png" )
			playerCardImage2.x = 100
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 9 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/10C.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 10 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/JC.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 11 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/QC.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 12 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/KC.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 13 then
			playerAmount2 = 11
			playerCardImage2 = display.newImage( "Assets/PNG/AC.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end

		--Hearts
		if playerCard2 == 14 then
			playerAmount2 = 2
			playerCardImage2 = display.newImage( "Assets/PNG/2H.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 15 then
			playerAmount2 = 3
			playerCardImage2 = display.newImage( "Assets/PNG/3H.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 16 then
			playerAmount2 = 4
			playerCardImage2 = display.newImage( "Assets/PNG/4H.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 17 then
			playerAmount2 = 5
			playerCardImage2 = display.newImage( "Assets/PNG/5H.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 18 then
			playerAmount2 = 6
			playerCardImage2 = display.newImage( "Assets/PNG/6H.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 19 then
			playerAmount2 = 7
			playerCardImage2 = display.newImage( "Assets/PNG/7H.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 20 then
			playerAmount2 = 8
			playerCardImage2 = display.newImage( "Assets/PNG/8H.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 21 then
			playerAmount2 = 9
			playerCardImage2 = display.newImage( "Assets/PNG/9H.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 22 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/10H.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 23 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/JH.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 24 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/QH.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 25 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/KH.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 26 then
			playerAmount2 = 11
			playerCardImage2 = display.newImage( "Assets/PNG/AH.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end

		--Spades
		if playerCard2 == 27 then
			playerAmount2 = 2
			playerCardImage2 = display.newImage( "Assets/PNG/2S.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 28 then
			playerAmount2 = 3
			playerCardImage2 = display.newImage( "Assets/PNG/3S.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 29 then
			playerAmount2 = 4
			playerCardImage2 = display.newImage( "Assets/PNG/4S.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 30 then
			playerAmount2 = 5
			playerCardImage2 = display.newImage( "Assets/PNG/5S.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 31 then
			playerAmount2 = 6
			playerCardImage2 = display.newImage( "Assets/PNG/6S.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 32 then
			playerAmount2 = 7
			playerCardImage2 = display.newImage( "Assets/PNG/7S.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 33 then
			playerAmount2 = 8
			playerCardImage2 = display.newImage( "Assets/PNG/8S.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 34 then
			playerAmount2 = 9
			playerCardImage2 = display.newImage( "Assets/PNG/9S.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 35 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/10S.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 36 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/JS.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 37 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/QS.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 38 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/KS.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 39 then
			playerAmount2 = 11
			playerCardImage2 = display.newImage( "Assets/PNG/AS.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end

		--Diamonds
		if playerCard2 == 40 then
			playerAmount2 = 2
			playerCardImage2 = display.newImage( "Assets/PNG/2D.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 41 then
			playerAmount2 = 3
			playerCardImage2 = display.newImage( "Assets/PNG/3D.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 42 then
			playerAmount2 = 4
			playerCardImage2 = display.newImage( "Assets/PNG/4D.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 43 then
			playerAmount2 = 5
			playerCardImage2 = display.newImage( "Assets/PNG/5D.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 44 then
			playerAmount2 = 6
			playerCardImage2 = display.newImage( "Assets/PNG/6D.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 45 then
			playerAmount2 = 7
			playerCardImage2 = display.newImage( "Assets/PNG/7D.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 46 then
			playerAmount2 = 8
			playerCardImage2 = display.newImage( "Assets/PNG/8D.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 47 then
			playerAmount2 = 9
			playerCardImage2 = display.newImage( "Assets/PNG/9D.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 48 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/10D.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 49 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/JD.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 50 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/QD.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 51 then
			playerAmount2 = 10
			playerCardImage2 = display.newImage( "Assets/PNG/KD.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end
		if playerCard2 == 52 then
			playerAmount2 = 11
			playerCardImage2 = display.newImage( "Assets/PNG/AD.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end

		if playerCard2 == 53 then
			playerAmount2 = 2
			playerCardImage2 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage2.x = 135
			playerCardImage2.y = 390
			playerCardImage2.width = 75
			playerCardImage2.height = 100
		end





		--Text that displays the player's score
		playerAmountText = display.newText( "Amount: ".. playerAmount1 + playerAmount2, 275, 500, native.systemFont, 12 )
		playerAmountText:setFillColor( 255/255, 255/255, 255/255 )






		--Conditions that make sure there are no duplicate cards
		if dealerCard1 == playerCard1 or dealerCard1 == playerCard2 then
			dealerCard1 = dealerCard1 + 1
		end

		if playerCard1 == playerCard2 then
			playerCard1 = playerCard1 + 1
		end





		--Calculate Buttons
		hitButton = display.newImageRect( "Assets/hit.png", 50, 25 )
		hitButton.x = 285
		hitButton.y = 450
		hitButton.id = "hit button"

		standButton = display.newImageRect( "Assets/stand.png", 50, 25 )
		standButton.x = 285
		standButton.y = 400
		standButton.id = "stand button"




		--Card counting variable
		cardCounter = 0





		--This function runs if the player wants another card
		local function hitButtonTouch( event )
			cardCounter = cardCounter + 0.5
			print("Cards Drawn: "..cardCounter)

			playerAmount3 = 0
			playerAmount4 = 0
			playerAmount5 = 0
			playerAmount6 = 0

			--The following if statements determine the value of additional cards
		if cardCounter == 1 then
			playerCard3 = math.random(1,52)
		end

		if cardCounter >= 1 then
			playerCardImage3 = nil
			--Clubs
		if playerCard3 == 1 then
			playerAmount3 = 2
			playerCardImage3 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 2 then
			playerAmount3 = 3
			playerCardImage3 = display.newImage( "Assets/PNG/3C.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 3 then
			playerAmount3 = 4
			playerCardImage3 = display.newImage( "Assets/PNG/4C.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 4 then
			playerAmount3 = 5
			playerCardImage3 = display.newImage( "Assets/PNG/5C.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 5 then
			playerAmount3 = 6
			playerCardImage3 = display.newImage( "Assets/PNG/6C.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 6 then
			playerAmount3 = 7
			playerCardImage3 = display.newImage( "Assets/PNG/7C.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 7 then
			playerAmount3 = 8
			playerCardImage3 = display.newImage( "Assets/PNG/8C.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 8 then
			playerAmount3 = 9
			playerCardImage3 = display.newImage( "Assets/PNG/9C.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 9 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/10C.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 10 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/JC.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 11 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/QC.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 12 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/KC.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 13 then
			playerAmount3 = 11
			playerCardImage3 = display.newImage( "Assets/PNG/AC.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end

		--Hearts
		if playerCard3 == 14 then
			playerAmount3 = 2
			playerCardImage3 = display.newImage( "Assets/PNG/2H.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 15 then
			playerAmount3 = 3
			playerCardImage3 = display.newImage( "Assets/PNG/3H.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 16 then
			playerAmount3 = 4
			playerCardImage3 = display.newImage( "Assets/PNG/4H.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 17 then
			playerAmount3 = 5
			playerCardImage3 = display.newImage( "Assets/PNG/5H.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 18 then
			playerAmount3 = 6
			playerCardImage3 = display.newImage( "Assets/PNG/6H.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 19 then
			playerAmount3 = 7
			playerCardImage3 = display.newImage( "Assets/PNG/7H.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 20 then
			playerAmount3 = 8
			playerCardImage3 = display.newImage( "Assets/PNG/8H.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 21 then
			playerAmount3 = 9
			playerCardImage3 = display.newImage( "Assets/PNG/9H.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 22 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/10H.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 23 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/JH.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 24 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/QH.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 25 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/KH.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 26 then
			playerAmount3 = 11
			playerCardImage3 = display.newImage( "Assets/PNG/AH.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end

		--Spades
		if playerCard3 == 27 then
			playerAmount3 = 2
			playerCardImage3 = display.newImage( "Assets/PNG/2S.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 28 then
			playerAmount3 = 3
			playerCardImage3 = display.newImage( "Assets/PNG/3S.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 29 then
			playerAmount3 = 4
			playerCardImage3 = display.newImage( "Assets/PNG/4S.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 30 then
			playerAmount3 = 5
			playerCardImage3 = display.newImage( "Assets/PNG/5S.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 31 then
			playerAmount3 = 6
			playerCardImage3 = display.newImage( "Assets/PNG/6S.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 32 then
			playerAmount3 = 7
			playerCardImage3 = display.newImage( "Assets/PNG/7S.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 33 then
			playerAmount3 = 8
			playerCardImage3 = display.newImage( "Assets/PNG/8S.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 34 then
			playerAmount3 = 9
			playerCardImage3 = display.newImage( "Assets/PNG/9S.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 35 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/10S.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 36 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/JS.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 37 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/QS.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 38 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/KS.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 39 then
			playerAmount3 = 11
			playerCardImage3 = display.newImage( "Assets/PNG/AS.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end

		--Diamonds
		if playerCard3 == 40 then
			playerAmount3 = 2
			playerCardImage3 = display.newImage( "Assets/PNG/2D.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 41 then
			playerAmount3 = 3
			playerCardImage3 = display.newImage( "Assets/PNG/3D.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 42 then
			playerAmount3 = 4
			playerCardImage3 = display.newImage( "Assets/PNG/4D.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 43 then
			playerAmount3 = 5
			playerCardImage3 = display.newImage( "Assets/PNG/5D.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 44 then
			playerAmount3 = 6
			playerCardImage3 = display.newImage( "Assets/PNG/6D.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 45 then
			playerAmount3 = 7
			playerCardImage3 = display.newImage( "Assets/PNG/7D.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 46 then
			playerAmount3 = 8
			playerCardImage3 = display.newImage( "Assets/PNG/8D.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 47 then
			playerAmount3 = 9
			playerCardImage3 = display.newImage( "Assets/PNG/9D.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 48 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/10D.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 49 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/JD.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 50 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/QD.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 51 then
			playerAmount3 = 10
			playerCardImage3 = display.newImage( "Assets/PNG/KD.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		if playerCard3 == 52 then
			playerAmount3 = 11
			playerCardImage3 = display.newImage( "Assets/PNG/AD.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end

		if playerCard3 == 53 then
			playerAmount3 = 2
			playerCardImage3 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage3.x = 40
			playerCardImage3.y = 280
			playerCardImage3.width = 75
			playerCardImage3.height = 100
		end
		
		--Updated player amount text
		playerAmountText.text = ("Amount: ".. playerAmount1 + playerAmount2 + playerAmount3)
		
		--Duplicate blocker
		if playerCard3==dealerCard1 or playerCard3 == playerCard1 or playerCard3 == playerCard2 then
			playerCard3 = playerCard3 + 1
		end
	end
	
	if cardCounter == 2 then
		playerCard4 = math.random(1,52)
	end

	if cardCounter >= 2 then
		playerCardImage4 = nil 

		--Clubs
		if playerCard4 == 1 then
			playerAmount4 = 2
			playerCardImage4 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 2 then
			playerAmount4 = 3
			playerCardImage4 = display.newImage( "Assets/PNG/3C.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 3 then
			playerAmount4 = 4
			playerCardImage4 = display.newImage( "Assets/PNG/4C.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 4 then
			playerAmount4 = 5
			playerCardImage4 = display.newImage( "Assets/PNG/5C.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 5 then
			playerAmount4 = 6
			playerCardImage4 = display.newImage( "Assets/PNG/6C.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 6 then
			playerAmount4 = 7
			playerCardImage4 = display.newImage( "Assets/PNG/7C.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 7 then
			playerAmount4 = 8
			playerCardImage4 = display.newImage( "Assets/PNG/8C.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 8 then
			playerAmount4 = 9
			playerCardImage4 = display.newImage( "Assets/PNG/9C.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 9 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/10C.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 10 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/JC.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 11 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/QC.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 12 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/KC.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 13 then
			playerAmount4 = 11
			playerCardImage4 = display.newImage( "Assets/PNG/AC.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end

		--Hearts
		if playerCard4 == 14 then
			playerAmount4 = 2
			playerCardImage4 = display.newImage( "Assets/PNG/2H.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 15 then
			playerAmount4 = 3
			playerCardImage4 = display.newImage( "Assets/PNG/3H.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 16 then
			playerAmount4 = 4
			playerCardImage4 = display.newImage( "Assets/PNG/4H.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 17 then
			playerAmount4 = 5
			playerCardImage4 = display.newImage( "Assets/PNG/5H.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 18 then
			playerAmount4 = 6
			playerCardImage4 = display.newImage( "Assets/PNG/6H.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 19 then
			playerAmount4 = 7
			playerCardImage4 = display.newImage( "Assets/PNG/7H.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 20 then
			playerAmount4 = 8
			playerCardImage4 = display.newImage( "Assets/PNG/8H.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 21 then
			playerAmount4 = 9
			playerCardImage4 = display.newImage( "Assets/PNG/9H.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 22 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/10H.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 23 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/JH.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 24 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/QH.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 25 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/KH.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 26 then
			playerAmount4 = 11
			playerCardImage4 = display.newImage( "Assets/PNG/AH.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end

		--Spades
		if playerCard4 == 27 then
			playerAmount4 = 2
			playerCardImage4 = display.newImage( "Assets/PNG/2S.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 28 then
			playerAmount4 = 3
			playerCardImage4 = display.newImage( "Assets/PNG/3S.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 29 then
			playerAmount4 = 4
			playerCardImage4 = display.newImage( "Assets/PNG/4S.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 30 then
			playerAmount4 = 5
			playerCardImage4 = display.newImage( "Assets/PNG/5S.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 31 then
			playerAmount4 = 6
			playerCardImage4 = display.newImage( "Assets/PNG/6S.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 32 then
			playerAmount4 = 7
			playerCardImage4 = display.newImage( "Assets/PNG/7S.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 33 then
			playerAmount4 = 8
			playerCardImage4 = display.newImage( "Assets/PNG/8S.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 34 then
			playerAmount4 = 9
			playerCardImage4 = display.newImage( "Assets/PNG/9S.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 35 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/10S.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 36 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/JS.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 37 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/QS.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 38 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/KS.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 39 then
			playerAmount4 = 11
			playerCardImage4 = display.newImage( "Assets/PNG/AS.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end

		--Diamonds
		if playerCard4 == 40 then
			playerAmount4 = 2
			playerCardImage4 = display.newImage( "Assets/PNG/2D.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 41 then
			playerAmount4 = 3
			playerCardImage4 = display.newImage( "Assets/PNG/3D.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 42 then
			playerAmount4 = 4
			playerCardImage4 = display.newImage( "Assets/PNG/4D.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 43 then
			playerAmount4 = 5
			playerCardImage4 = display.newImage( "Assets/PNG/5D.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 44 then
			playerAmount4 = 6
			playerCardImage4 = display.newImage( "Assets/PNG/6D.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 45 then
			playerAmount4 = 7
			playerCardImage4 = display.newImage( "Assets/PNG/7D.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 46 then
			playerAmount4 = 8
			playerCardImage4 = display.newImage( "Assets/PNG/8D.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 47 then
			playerAmount4 = 9
			playerCardImage4 = display.newImage( "Assets/PNG/9D.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 48 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/10D.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 49 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/JD.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 50 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/QD.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 51 then
			playerAmount4 = 10
			playerCardImage4 = display.newImage( "Assets/PNG/KD.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end
		if playerCard4 == 52 then
			playerAmount4 = 11
			playerCardImage4 = display.newImage( "Assets/PNG/AD.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end

		if playerCard4 == 53 then
			playerAmount4 = 2
			playerCardImage4 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage4.x = 120
			playerCardImage4.y = 280
			playerCardImage4.width = 75
			playerCardImage4.height = 100
		end

		--Updated player amount text
		playerAmountText.text = ("Amount: ".. playerAmount1 + playerAmount2 + playerAmount3 + playerAmount4)
		
		--Duplicate blocker
		if playerCard4==dealerCard1 or playerCard4 == playerCard1 or playerCard4 == playerCard2 or playerCard4 == playerCard3 then
			playerCard4 = playerCard4 + 1
		end
	end

	if cardCounter == 3 then
		playerCard5 = math.random(1,52)
	end

	if cardCounter >= 3 then
		playerCardImage5 = nil 

		--Clubs
		if playerCard5 == 1 then
			playerAmount5 = 2
			playerCardImage5 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 2 then
			playerAmount5 = 3
			playerCardImage5 = display.newImage( "Assets/PNG/3C.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 3 then
			playerAmount5 = 4
			playerCardImage5 = display.newImage( "Assets/PNG/4C.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 4 then
			playerAmount5 = 5
			playerCardImage5 = display.newImage( "Assets/PNG/5C.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 5 then
			playerAmount5 = 6
			playerCardImage5 = display.newImage( "Assets/PNG/6C.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 6 then
			playerAmount5 = 7
			playerCardImage5 = display.newImage( "Assets/PNG/7C.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 7 then
			playerAmount5 = 8
			playerCardImage5 = display.newImage( "Assets/PNG/8C.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 8 then
			playerAmount5 = 9
			playerCardImage5 = display.newImage( "Assets/PNG/9C.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 9 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/10C.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 10 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/JC.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 11 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/QC.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 12 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/KC.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 13 then
			playerAmount5 = 11
			playerCardImage5 = display.newImage( "Assets/PNG/AC.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end

		--Hearts
		if playerCard5 == 14 then
			playerAmount5 = 2
			playerCardImage5 = display.newImage( "Assets/PNG/2H.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 15 then
			playerAmount5 = 3
			playerCardImage5 = display.newImage( "Assets/PNG/3H.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 16 then
			playerAmount5 = 4
			playerCardImage5 = display.newImage( "Assets/PNG/4H.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 17 then
			playerAmount5 = 5
			playerCardImage5 = display.newImage( "Assets/PNG/5H.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 18 then
			playerAmount5 = 6
			playerCardImage5 = display.newImage( "Assets/PNG/6H.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 19 then
			playerAmount5 = 7
			playerCardImage5 = display.newImage( "Assets/PNG/7H.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 20 then
			playerAmount5 = 8
			playerCardImage5 = display.newImage( "Assets/PNG/8H.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 21 then
			playerAmount5 = 9
			playerCardImage5 = display.newImage( "Assets/PNG/9H.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 22 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/10H.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 23 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/JH.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 24 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/QH.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 25 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/KH.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 26 then
			playerAmount5 = 11
			playerCardImage5 = display.newImage( "Assets/PNG/AH.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end

		--Spades
		if playerCard5 == 27 then
			playerAmount5 = 2
			playerCardImage5 = display.newImage( "Assets/PNG/2S.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 28 then
			playerAmount5 = 3
			playerCardImage5 = display.newImage( "Assets/PNG/3S.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 29 then
			playerAmount5 = 4
			playerCardImage5 = display.newImage( "Assets/PNG/4S.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 30 then
			playerAmount5 = 5
			playerCardImage5 = display.newImage( "Assets/PNG/5S.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 31 then
			playerAmount5 = 6
			playerCardImage5 = display.newImage( "Assets/PNG/6S.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 32 then
			playerAmount5 = 7
			playerCardImage5 = display.newImage( "Assets/PNG/7S.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 33 then
			playerAmount5 = 8
			playerCardImage5 = display.newImage( "Assets/PNG/8S.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 34 then
			playerAmount5 = 9
			playerCardImage5 = display.newImage( "Assets/PNG/9S.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 35 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/10S.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 36 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/JS.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 37 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/QS.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 38 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/KS.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 39 then
			playerAmount5 = 11
			playerCardImage5 = display.newImage( "Assets/PNG/AS.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end

		--Diamonds
		if playerCard5 == 40 then
			playerAmount5 = 2
			playerCardImage5 = display.newImage( "Assets/PNG/2D.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 41 then
			playerAmount5 = 3
			playerCardImage5 = display.newImage( "Assets/PNG/3D.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 42 then
			playerAmount5 = 4
			playerCardImage5 = display.newImage( "Assets/PNG/4D.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 43 then
			playerAmount5 = 5
			playerCardImage5 = display.newImage( "Assets/PNG/5D.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 44 then
			playerAmount5 = 6
			playerCardImage5 = display.newImage( "Assets/PNG/6D.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 45 then
			playerAmount5 = 7
			playerCardImage5 = display.newImage( "Assets/PNG/7D.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 46 then
			playerAmount5 = 8
			playerCardImage5 = display.newImage( "Assets/PNG/8D.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 47 then
			playerAmount5 = 9
			playerCardImage5 = display.newImage( "Assets/PNG/9D.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 48 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/10D.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 49 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/JD.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 50 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/QD.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 51 then
			playerAmount5 = 10
			playerCardImage5 = display.newImage( "Assets/PNG/KD.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end
		if playerCard5 == 52 then
			playerAmount5 = 11
			playerCardImage5 = display.newImage( "Assets/PNG/AD.png" )
			playerCardImage5.x = 200
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end

		if playerCard5 == 53 then
			playerAmount5 = 2
			playerCardImage5 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage5.x = 280
			playerCardImage5.y = 280
			playerCardImage5.width = 75
			playerCardImage5.height = 100
		end

		--Updated player amount text
		playerAmountText.text = ("Amount: ".. playerAmount1 + playerAmount2 + playerAmount3 + playerAmount4 + playerAmount5)
		
		--Duplicate blocker
		if playerCard5==dealerCard1 or playerCard5 == playerCard1 or playerCard5 == playerCard2 or playerCard5 == playerCard3 or playerCard5 == playerCard4 then
			playerCard5 = playerCard5 + 1
		end
	end

	if cardCounter == 4 then
		playerCard6 = math.random(1,52)
	end

	if cardCounter >= 4 then
		playerCardImage6 = nil 

		--Clubs
		if playerCard6 == 1 then
			playerAmount6 = 2
			playerCardImage6 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 2 then
			playerAmount6 = 3
			playerCardImage6 = display.newImage( "Assets/PNG/3C.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 3 then
			playerAmount6 = 4
			playerCardImage6 = display.newImage( "Assets/PNG/4C.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 4 then
			playerAmount6 = 5
			playerCardImage6 = display.newImage( "Assets/PNG/5C.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 5 then
			playerAmount6 = 6
			playerCardImage6 = display.newImage( "Assets/PNG/6C.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 6 then
			playerAmount6 = 7
			playerCardImage6 = display.newImage( "Assets/PNG/7C.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 7 then
			playerAmount6 = 8
			playerCardImage6 = display.newImage( "Assets/PNG/8C.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 8 then
			playerAmount6 = 9
			playerCardImage6 = display.newImage( "Assets/PNG/9C.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 9 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/10C.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 10 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/JC.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 11 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/QC.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 12 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/KC.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 13 then
			playerAmount6 = 11
			playerCardImage6 = display.newImage( "Assets/PNG/AC.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end

		--Hearts
		if playerCard6 == 14 then
			playerAmount6 = 2
			playerCardImage6 = display.newImage( "Assets/PNG/2H.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 15 then
			playerAmount6 = 3
			playerCardImage6 = display.newImage( "Assets/PNG/3H.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 16 then
			playerAmount6 = 4
			playerCardImage6 = display.newImage( "Assets/PNG/4H.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 17 then
			playerAmount6 = 5
			playerCardImage6 = display.newImage( "Assets/PNG/5H.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 18 then
			playerAmount6 = 6
			playerCardImage6 = display.newImage( "Assets/PNG/6H.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 19 then
			playerAmount6 = 7
			playerCardImage6 = display.newImage( "Assets/PNG/7H.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 20 then
			playerAmount6 = 8
			playerCardImage6 = display.newImage( "Assets/PNG/8H.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 21 then
			playerAmount6 = 9
			playerCardImage6 = display.newImage( "Assets/PNG/9H.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 22 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/10H.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 23 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/JH.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 24 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/QH.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 25 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/KH.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 26 then
			playerAmount6 = 11
			playerCardImage6 = display.newImage( "Assets/PNG/AH.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end

		--Spades
		if playerCard6 == 27 then
			playerAmount6 = 2
			playerCardImage6 = display.newImage( "Assets/PNG/2S.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 28 then
			playerAmount6 = 3
			playerCardImage6 = display.newImage( "Assets/PNG/3S.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 29 then
			playerAmount6 = 4
			playerCardImage6 = display.newImage( "Assets/PNG/4S.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 30 then
			playerAmount6 = 5
			playerCardImage6 = display.newImage( "Assets/PNG/5S.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 31 then
			playerAmount6 = 6
			playerCardImage6 = display.newImage( "Assets/PNG/6S.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 32 then
			playerAmount6 = 7
			playerCardImage6 = display.newImage( "Assets/PNG/7S.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 33 then
			playerAmount6 = 8
			playerCardImage6 = display.newImage( "Assets/PNG/8S.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 34 then
			playerAmount6 = 9
			playerCardImage6 = display.newImage( "Assets/PNG/9S.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 35 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/10S.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 36 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/JS.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 37 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/QS.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 38 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/KS.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 39 then
			playerAmount6 = 11
			playerCardImage6 = display.newImage( "Assets/PNG/AS.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end

		--Diamonds
		if playerCard6 == 40 then
			playerAmount6 = 2
			playerCardImage6 = display.newImage( "Assets/PNG/2D.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 41 then
			playerAmount6 = 3
			playerCardImage6 = display.newImage( "Assets/PNG/3D.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 42 then
			playerAmount6 = 4
			playerCardImage6 = display.newImage( "Assets/PNG/4D.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 43 then
			playerAmount6 = 5
			playerCardImage6 = display.newImage( "Assets/PNG/5D.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 44 then
			playerAmount6 = 6
			playerCardImage6 = display.newImage( "Assets/PNG/6D.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 45 then
			playerAmount6 = 7
			playerCardImage6 = display.newImage( "Assets/PNG/7D.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 46 then
			playerAmount6 = 8
			playerCardImage6 = display.newImage( "Assets/PNG/8D.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 47 then
			playerAmount6 = 9
			playerCardImage6 = display.newImage( "Assets/PNG/9D.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 48 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/10D.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 49 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/JD.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 50 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/QD.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 51 then
			playerAmount6 = 10
			playerCardImage6 = display.newImage( "Assets/PNG/KD.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end
		if playerCard6 == 52 then
			playerAmount6 = 11
			playerCardImage6 = display.newImage( "Assets/PNG/AD.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end

		if playerCard6 == 53 then
			playerAmount6 = 2
			playerCardImage6 = display.newImage( "Assets/PNG/2C.png" )
			playerCardImage6.x = 280
			playerCardImage6.y = 280
			playerCardImage6.width = 75
			playerCardImage6.height = 100
		end

		--Updated player amount text
		playerAmountText.text = ("Amount: ".. playerAmount1 + playerAmount2 + playerAmount3 + playerAmount4 + playerAmount5 + playerAmount6)
		
		--Duplicate blocker
		if playerCard6==dealerCard1 or playerCard6 == playerCard1 or playerCard6 == playerCard2 or playerCard6 == playerCard3 or playerCard6 == playerCard4 or playerCard6 == playerCard5 then
			playerCard6 = playerCard6 + 1
		end	
	end

	--Tallying the player's total score
	playerTotal = playerAmount1 + playerAmount2 + playerAmount3 + playerAmount4 + playerAmount5 + playerAmount6	
	print("Player Total Score: "..playerTotal)
	print(playerAmount3)
	print(playerAmount4)
	print(playerAmount5)
	print(playerAmount6)
	end
	


		--Event listeners for the buttons
		hitButton:addEventListener( "touch", hitButtonTouch )



    elseif ( phase == "did" ) then
        -- Code here runs when the scene is entirely on screen
    end
end

--Event listeners for the scenes
scene:addEventListener( "show", scene )
--End of the scene function
return scene