sub ShowMenuScreen()

    m.MenuScreen=CreateObject("roSGNode","MenuScreen")
    m.MenuScreen.ObserveField("btnChannelsSelected","onbtnChannelsSelected")
    m.MenuScreen.ObserveField("btnMoviesSelected","onbtnMoviesSelected")
    m.MenuScreen.ObserveField("btnSeriesSelected","onbtnSeriesSelected")
    m.MenuScreen.ObserveField("btnPlaylistSelected","ValidateandShowRecentScreen")
    m.MenuScreen.ObserveField("btnLinkSelected","ShowSubscriptionScreen")
     ShowScreen(m.MenuScreen)


end sub

sub ValidateandShowRecentScreen()
    ShowRecentScreen()
end sub

sub onbtnChannelsSelected()
    m.top.OptionSelected="Channels"
    ShowHomeScreen()
end sub

sub onbtnMoviesSelected()
    m.top.OptionSelected="Movies"
    ShowHomeScreen()
end sub

sub onbtnSeriesSelected()
    m.top.OptionSelected="Series"
    ShowHomeScreen()
end sub

