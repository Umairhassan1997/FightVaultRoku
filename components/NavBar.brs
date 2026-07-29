sub navBarInit(screenName as String)

    m.screenName=screenName
   m.scene= m.top.getScene()
    ?"Screen Name"m.screenName
    m.btnSearchN=m.top.findNode("btnSearchN")
    m.btnHomeN=m.top.findNode("btnHomeN")
    m.btnPlaylistN=m.top.findNode("btnPlaylistN")
    m.btnFavN=m.top.findNode("btnFavN")
    m.btnInputN=m.top.findNode("btnInputN")
    m.btnSettingN=m.top.findNode("btnSettingN")
   if m.screenName<>"Search"
    ?"NB1"
    m.btnSearchN.observeField("buttonSelected","ShowSearchScreen")
   else
    m.btnSearchN.focusfootprintbitmapuri="pkg:/images/btnSeaF.png"

   end if
   if  m.screenName<>"Home"
    ?"NB2"
    m.btnHomeN.observeField("buttonSelected","ShowMenuScreen")
     else
    m.btnHomeN.focusfootprintbitmapuri="pkg:/images/btnHoF.png"

   end if

   if m.screenName<>"Playlist"
    ?"NB3"
    m.btnPlaylistN.observeField("buttonSelected","ShowPlaylistScreen")
   else
        m.btnPlaylistN.focusfootprintbitmapuri="pkg:/images/btnPlF.png"

   end if
   if m.screenName<>"Fav"
    ?"NB4"
    m.btnFavN.observeField("buttonSelected","ShowFavoriteScreen")

   else
        m.btnFavN.focusfootprintbitmapuri="pkg:/images/btnFavF.png"

   end if

   if m.screenName<>"Input"
    ?"NB5"
    m.btnInputN.observeField("buttonSelected","ShowInputScreen")
   else
        m.btnInputN.focusfootprintbitmapuri="pkg:/images/btnIpF.png"

   end if

   if m.screenName<>"Setting"
    ?"NB5"
    m.btnSettingN.observeField("buttonSelected","ShowSettingScreen")

   else
        m.btnSettingN.focusfootprintbitmapuri="pkg:/images/btnSetF.png"


   end if

'    m.scene=m.top.getScene()


end sub

sub ShowSearchScreen()
    m.scene.callFunc("ShowSearchScreen")
    m.btnSearchN.unobserveField("buttonSelected")
end sub

sub ShowHomeScreen()
    m.scene.callFunc("ShowHomeScreen")
    m.btnHomeN.unobserveField("buttonSelected")
end sub

sub ShowPlaylistScreen()
    m.scene.callFunc("ShowPlaylistScreen")
    m.btnPlaylistN.unobserveField("buttonSelected")
end sub

sub ShowFavoriteScreen()
    m.scene.callFunc("ShowFavoriteScreen")
    m.btnFavN.unobserveField("buttonSelected")
end sub

sub ShowSettingScreen()
    m.scene.callFunc("ShowSettingScreen")
    m.btnSettingN.unobserveField("buttonSelected")
end sub

sub ShowInputScreen()
    m.scene.callFunc("ShowInputNavScreen")
    m.btnInputN.unobserveField("buttonSelected")
end sub

sub ShowMenuScreen()
    m.scene.callFunc("ShowMenuScreen")
    m.btnHomeN.unobserveField("buttonSelected")
end sub
