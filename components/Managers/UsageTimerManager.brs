' UsageTimerManager — free viewing allowance (disabled; unlimited for all users)

function GetFreeWatchLimitSeconds() as Integer
    return -1 ' unlimited — no free-watch cap
end function

function GetUsageRegistrySection() as String
    return "LiveTV"
end function

function GetUsageRegistryKey() as String
    return "remainingSeconds"
end function

sub InitUsageTimer()
    m.global.AddField("launchRoutePending", "boolean", false)
    m.global.AddField("remainingSeconds", "integer", false)
    m.global.AddField("isPlaying", "boolean", false)
    m.global.AddField("currentChannelIndex", "integer", false)

    ' Unlimited viewing — do not enforce a remaining-seconds budget
    m.global.remainingSeconds = 999999

    if m.global.currentChannelIndex = invalid
        m.global.currentChannelIndex = 0
    end if
    m.global.isPlaying = false
end sub

sub SaveRemainingSeconds(seconds as Integer)
    m.global.remainingSeconds = seconds
end sub

function GetRemainingSeconds() as Integer
    if m.global.remainingSeconds = invalid
        InitUsageTimer()
    end if
    return m.global.remainingSeconds
end function

function HasFreeTimeRemaining() as Boolean
    return true
end function

' Usage tick disabled — always allow continued playback
function TickUsageSecond() as Boolean
    return true
end function

sub PauseUsageTracking()
    m.global.isPlaying = false
end sub

sub ResumeUsageTracking()
    m.global.isPlaying = true
end sub
